#!bin/bash

#fold path
rosbag_folder="/home/andy/readimage/rosbag_folder/"
image_folder="/home/andy/readimage/image_folder/"

#python file_path and python file
file_path="/home/andy/readimage"
python_name="read_image.py"

for file in  ${rosbag_folder}/*
do       
        nameWithoutBag=`basename $file .bag`
        cd image_folder
        mkdir ${nameWithoutBag}
        cd ..
        python $file_path/$python_name $nameWithoutBag
done

 


