#!/bin/env ruby
resolutions={
	'mdpi'=> 1,
	'hdpi' => 1.5,
	'xhdpi' => 2,
	'xxhdpi' => 3,
	'xxxhdpi' => 4,
	}
images = {
	'conversations_baloon.svg' => ['ic_launcher', 48],
	'conversations_mono.svg' => ['ic_notification', 24],
	'ic_received_indicator.svg' => ['ic_received_indicator', 12],
	'ic_send_text_offline.svg' => ['ic_send_text_offline', 36],
	'ic_send_text_online.svg' => ['ic_send_text_online', 36],
	'ic_send_text_away.svg' => ['ic_send_text_away', 36],
	'ic_send_text_dnd.svg' => ['ic_send_text_dnd', 36],
        'ic_send_photo_online.svg' => ['ic_send_photo_online', 36],
        'ic_send_photo_offline.svg' => ['ic_send_photo_offline', 36],
        'ic_send_photo_away.svg' => ['ic_send_photo_away', 36],
        'ic_send_photo_dnd.svg' => ['ic_send_photo_dnd', 36],
	'ic_send_location_online.svg' => ['ic_send_location_online', 36],
        'ic_send_location_offline.svg' => ['ic_send_location_offline', 36],
        'ic_send_location_away.svg' => ['ic_send_location_away', 36],
        'ic_send_location_dnd.svg' => ['ic_send_location_dnd', 36],
	'ic_send_voice_online.svg' => ['ic_send_voice_online', 36],
        'ic_send_voice_offline.svg' => ['ic_send_voice_offline', 36],
        'ic_send_voice_away.svg' => ['ic_send_voice_away', 36],
        'ic_send_voice_dnd.svg' => ['ic_send_voice_dnd', 36],
	}
images.each do |source, result|
	resolutions.each do |name, factor|
		size = factor * result[1]
		path = "../src/main/res/drawable-#{name}/#{result[0]}.png"
		cmd = "inkscape -e #{path} -C -h #{size} -w #{size} #{source}"
		puts cmd
		system cmd
	end
end
