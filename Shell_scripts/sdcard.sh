#! /bin/bash

#Copyright (C) 2012 Ceict Limited. All rights reserved.
#
#This file is property of Ceict with all rights reserved under the copyright laws.

DIR=/sdcard/logs
max_dirno=0

for dirname in `ls $DIR`; do
	dirno=${dirname#log}
	if [ $dirno -gt $max_dirno ]; then
		max_dirno=$dirno
	fi
done

mkdir $DIR/log$((max_dirno + 1))
