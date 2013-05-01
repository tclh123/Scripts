#!/bin/bash

for i in *.wma ; do echo "$i" ; done

for filelist in *.wma
do
	echo "$filelist"
	ffmpeg -i "$filelist" -acodec libmp3lame -ab 192k "$filelist.mp3"
done