#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
echo "       ) _     _ "
sleep 0.03
echo "      ( (^)-~-(^) "
sleep 0.03
echo "  _ ,-.\_( 6 6 )__,-.___ "
sleep 0.03
echo " | |'M'   \   /   'M'    "
sleep 0.03
echo " | |_ _ __ >o< _ _ _   "
sleep 0.03
echo " | __| '__/ _  | '_ \  "
sleep 0.03
echo " | |_| | | (_| | |_) | "
sleep 0.03
echo "  \__|_|  \__,_| .__/  "
sleep 0.03
echo "               | |     "
sleep 0.03
echo "               |_|    "
sleep 0.03
echo " ========================="
sleep 2
echo " ==    Trap Project     =="
sleep 0.7
echo " ========================="
echo " Trap Project adalah tools untuk"
echo " mendapatkan IP atau lokasi Target"
echo
echo Selamat datang $nick ":)" Jones! :v
echo 
get_url=$(curl -s http://zlucifer.com/api/trap.php) #cek status
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *GoogleDrive* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo "Apa kamu sudah membuat file trap?"
    echo "y/n?"
    read confirm


    if [ $confirm = "y" ]; then
        echo "Masukan nama file yang sudah kamu buat"
        echo "Untuk melakukan pengecekan hasil"
        read file
        echo "Melakukan Pengecekan"
        i=0
        max=100
    while [ $i -le $max ]; do
        echo -ne "\nProses Pengecekan : $i% "
        sleep 0.03
    if [ $i -eq 100 ]; then
        echo -ne " [complete!]\n"
        get_url=$(curl -s http://zlucifer.com/api/trap.php)
        curl -s $get_url/cek.php?input=$file #cek
    fi
        let i++
    done


    elif [ $confirm = "n" ]; then
        echo "Masukan nama file yang ingin kamu buat"
        read create
        echo "Memproses pembuatan file"
        i=0
        max=100
    while [ $i -le $max ]; do
        echo -ne "\nProses Pembuatan : $i% "
        sleep 0.03
    if [ $i -eq 100 ]; then
        echo -ne " [complete!]\n"
        get_url=$(curl -s http://zlucifer.com/api/trap.php)
        curl -s $get_url/trap.php?create=$create #create
    fi
        let i++
    done    
        echo "ingin melakukan pengecekan?"
        echo "y/n?"
        read cek_lagi
    if [ $cek_lagi = "y" ]; then
        echo "Masukan nama file yang sudah kamu buat"
        echo "Untuk melakukan pengecekan hasil"
        read file
        echo "Melakukan Pengecekan"
        curl -s $get_url/cek.php?input=$file #cek
    elif [ $cek_lagi = "n" ]; then
        echo "Terimakasih sudah menggunakan Trap Project :)"
    fi



    else 
    echo "Kesalahan"
    fi
fi
