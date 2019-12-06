#!/bin/bash

Folder=$1
Files=`basename ${Folder}/*`

for i in ${Files}; do
	ExtName=${i#*.}
	FileName=${i%.*}
	if [ ${ExtName} = "png" ]; then
		cwebp -lossless $i -o ${FileName}.webp
	fi
done
