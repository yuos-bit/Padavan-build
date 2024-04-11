################################################################################################
        #因不同型号配置功能不一样，所以先把配置项删除，如果你自己要添加其他的，也要写上删除这一条，切记！！！
        ################################################################################################
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' .config #删除配置项SOFTETHERVPN
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' .config #删除配置项SOFTETHERVPN
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' .config #删除配置项SOFTETHERVPN   
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config #删除配置项SS plus+
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config #删除配置项SS server
        sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config #删除配置项DNSFORWARDER
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' .config #删除配置项adbyby plus+
        sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config #删除配置项tunsafe
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' .config #删除配置项阿里DDNS
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config #删除配置项srelay
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME/d' .config #删除配置项adguardhome
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ZEROTIER/d' .config #删除配置项zerotier
        sed -i '/CONFIG_FIRMWARE_INCLUDE_DDNSTO/d' .config #删除配置项ddnsto
        sed -i '/CONFIG_FIRMWARE_INCLUDE_WIREGUARD/d' .config #删除配置项wireguard
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ALDRIVER/d' .config #删除配置项阿里云盘
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' .config #删除配置项smartdns
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SQM/d' .config #删除配置项sqm
        #下载功能
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA/d' .config #删除配置项aria
        sed -i '/CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL/d' .config #删除配置项aria网页控制台
        sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION/d' .config #删除配置项TRANSMISSION
        sed -i '/CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL/d' .config #删除配置项TRANSMISSION网页控制台
        #校园网相关开始
        sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config #删除配置项MENTOHUST
        sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config #删除配置项SCUTCLIENT
        sed -i '/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT/d' .config
        sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIEAP/d' .config
        sed -i '/CONFIG_FIRMWARE_INCLUDE_DOGCOM/d' .config
        #校园网相关结束
        sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=y/g' .config
        ######################################################################
        #以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
        ######################################################################
        echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=${{env.vpnsvr}}" >> .config #SOFTETHERVPN
        echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=${{env.vpncli}}" >> .config #SOFTETHERVPN
        echo "CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=${{env.vpncmd}}" >> .config #SOFTETHERVPN
        echo "CONFIG_FIRMWARE_INCLUDE_OPENVPN=${{env.openvpn}}" >> .config #OPENVPN
        #科学相关
        echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=${{env.ss}}" >> .config #SS plus+
        echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=${{env.v2ray}}" >> .config #集成v2ray执行文件（3.8M左右)
        echo "CONFIG_FIRMWARE_INCLUDE_XRAY=${{env.xray}}" >> .config #集成xray执行文件(5.6M左右)，可以代替v2ray，注：如果闪存太小不够还是建议使用v2ray
        echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=${{env.trojan}}" >> .config #集成trojan执行文件(1.1M左右)
        echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=${{env.ssobfs}}" >> .config # simple-obfs混淆插件
        echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> .config #SS server
        #
        echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
        echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> .config #tunsafe
        echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=${{env.dnsforwarder}}" >> .config #dnsforwarder
        #
        echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=${{env.adbyby}}" >> .config #adbyby plus+
        #
        echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=${{env.adguardhome}}" >> .config #adguardhome
        echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=${{env.smartdns}}" >> .config #smartdns
        #
        echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=${{env.aliddns}}" >> .config #阿里DDNS
        echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=${{env.zerotier}}" >> .config #zerotier ~1.3M
        echo "CONFIG_FIRMWARE_INCLUDE_DDNSTO=${{env.ddnsto}}" >> .config #ddnsto
        echo "CONFIG_FIRMWARE_INCLUDE_WIREGUARD=${{env.wireguard}}" >> .config #wireguard
        #
        echo "CONFIG_FIRMWARE_INCLUDE_ALDRIVER=${{env.aldriver}}" >> .config #阿里云盘
        echo "CONFIG_FIRMWARE_INCLUDE_SQM=${{env.sqm}}" >> .config #SQM
        #
        # frp & frps
        echo "CONFIG_FIRMWARE_INCLUDE_FRPC=${{env.frpc}}" >> .config #frp客户端
        echo "CONFIG_FIRMWARE_INCLUDE_FRPS=${{env.frps}}" >> .config #frp服务端
        # frp & frps
        #下载功能
        echo "CONFIG_FIRMWARE_INCLUDE_ARIA=${{env.aria}}" >> .config #配置项aria
        echo "CONFIG_FIRMWARE_INCLUDE_ARIA_WEB_CONTROL=${{env.aria}}" >> .config #配置项aria网页控制台
        echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION=${{env.transmission}}" >> .config #删除配置项TRANSMISSION
        echo "CONFIG_FIRMWARE_INCLUDE_TRANSMISSION_WEB_CONTROL=${{env.transmission}}" >> .config #配置项TRANSMISSION网页控制台
        #校园网相关开始
        echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=${{env.mentohust}}" >> .config #MENTOHUST
        echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=${{env.scutclient}}" >> .config #SCUTCLIENT
        echo "CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=${{env.njitclient}}" >> .config
        echo "CONFIG_FIRMWARE_INCLUDE_MINIEAP=${{env.minieap}}" >> .config
        echo "CONFIG_FIRMWARE_INCLUDE_DOGCOM=${{env.dogcom}}" >> .config
        #校园网相关结束
        #########################################################################################
        #自定义添加其它功能请参考源码configs/templates/目录下的config文件。按照上面的格式添加即可
        #格式如下：
        #sed -i '/自定义项/d' .config
        #echo "自定义项=y" >> .config
        sed -i "s/FIRMWARE_BUILDS_REV=.*/FIRMWARE_BUILDS_REV=${{ github.event.inputs.firmwarever }}/g" ./versions.inc
        echo '更新版本号时间'
        #########################################################################################