// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipsec_servers_server_ike_config.dart';
import 'get_ipsec_servers_server_ipsec_config.dart';

class GetIpsecServersServer {
  /// The CIDR block of the client, which is assigned an access address to the virtual NIC of the client.
  final pulumi.Input<String> clientIpPool;

  /// The creation time of the IPsec server. T represents the delimiter, and Z represents UTC, which is World Standard Time.
  final pulumi.Input<String> createTime;

  /// Indicates whether the current IPsec tunnel is deleted and negotiations are reinitiated.
  final pulumi.Input<bool> effectImmediately;

  /// The ID of the Ipsec Server.
  final pulumi.Input<String> id;

  /// The ID of the Identity as a Service (IDaaS) instance.
  final pulumi.Input<String> idaasInstanceId;

  /// The configurations of Phase 1 negotiations.
  final pulumi.Input<List<GetIpsecServersServerIkeConfig>> ikeConfigs;

  /// The public IP address of the VPN gateway.
  final pulumi.Input<String> internetIp;

  /// The configuration of Phase 2 negotiations.
  final pulumi.Input<List<GetIpsecServersServerIpsecConfig>> ipsecConfigs;

  /// The ID of the IPsec server.
  final pulumi.Input<String> ipsecServerId;

  /// The name of the IPsec server.
  final pulumi.Input<String> ipsecServerName;

  /// Local network segment: the network segment on The VPC side that needs to be interconnected with the client network segment.
  final pulumi.Input<String> localSubnet;

  /// The number of SSL connections of the VPN gateway. SSL-VPN the number of SSL connections shared with the IPsec server. For example, if the number of SSL connections is 5 and you have three SSL clients connected to the SSL-VPN, you can also use two clients to connect to the IPsec server.
  final pulumi.Input<int> maxConnections;

  /// Whether the two-factor authentication function has been turned on.
  final pulumi.Input<bool> multiFactorAuthEnabled;

  /// The number of clients that have connected to the IPsec server.
  final pulumi.Input<int> onlineClientCount;

  /// The pre-shared key.
  final pulumi.Input<String> psk;

  /// Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  final pulumi.Input<bool> pskEnabled;

  /// The ID of the VPN gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [GetIpsecServersServer].
  /// [clientIpPool] The CIDR block of the client, which is assigned an access address to the virtual NIC of the client.
  /// [createTime] The creation time of the IPsec server. T represents the delimiter, and Z represents UTC, which is World Standard Time.
  /// [effectImmediately] Indicates whether the current IPsec tunnel is deleted and negotiations are reinitiated.
  /// [id] The ID of the Ipsec Server.
  /// [idaasInstanceId] The ID of the Identity as a Service (IDaaS) instance.
  /// [ikeConfigs] The configurations of Phase 1 negotiations.
  /// [internetIp] The public IP address of the VPN gateway.
  /// [ipsecConfigs] The configuration of Phase 2 negotiations.
  /// [ipsecServerId] The ID of the IPsec server.
  /// [ipsecServerName] The name of the IPsec server.
  /// [localSubnet] Local network segment: the network segment on The VPC side that needs to be interconnected with the client network segment.
  /// [maxConnections] The number of SSL connections of the VPN gateway. SSL-VPN the number of SSL connections shared with the IPsec server. For example, if the number of SSL connections is 5 and you have three SSL clients connected to the SSL-VPN, you can also use two clients to connect to the IPsec server.
  /// [multiFactorAuthEnabled] Whether the two-factor authentication function has been turned on.
  /// [onlineClientCount] The number of clients that have connected to the IPsec server.
  /// [psk] The pre-shared key.
  /// [pskEnabled] Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  /// [vpnGatewayId] The ID of the VPN gateway.
  GetIpsecServersServer({
    required this.clientIpPool,
    required this.createTime,
    required this.effectImmediately,
    required this.id,
    required this.idaasInstanceId,
    required this.ikeConfigs,
    required this.internetIp,
    required this.ipsecConfigs,
    required this.ipsecServerId,
    required this.ipsecServerName,
    required this.localSubnet,
    required this.maxConnections,
    required this.multiFactorAuthEnabled,
    required this.onlineClientCount,
    required this.psk,
    required this.pskEnabled,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpPool': clientIpPool,
      'createTime': createTime,
      'effectImmediately': effectImmediately,
      'id': id,
      'idaasInstanceId': idaasInstanceId,
      'ikeConfigs':
          pulumi.Input.mapInputValue<
            List<GetIpsecServersServerIkeConfig>,
            List<Map<String, dynamic>>
          >(
            ikeConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetIpsecServersServerIkeConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'internetIp': internetIp,
      'ipsecConfigs':
          pulumi.Input.mapInputValue<
            List<GetIpsecServersServerIpsecConfig>,
            List<Map<String, dynamic>>
          >(
            ipsecConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetIpsecServersServerIpsecConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipsecServerId': ipsecServerId,
      'ipsecServerName': ipsecServerName,
      'localSubnet': localSubnet,
      'maxConnections': maxConnections,
      'multiFactorAuthEnabled': multiFactorAuthEnabled,
      'onlineClientCount': onlineClientCount,
      'psk': psk,
      'pskEnabled': pskEnabled,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetIpsecServersServer.fromMap(Map<String, dynamic> map) {
    return GetIpsecServersServer(
      clientIpPool: pulumi.Input.fromValue(map['clientIpPool'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      effectImmediately: pulumi.Input.fromValue(
        map['effectImmediately'] as bool,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      idaasInstanceId: pulumi.Input.fromValue(map['idaasInstanceId'] as String),
      ikeConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetIpsecServersServerIkeConfig>(
          map['ikeConfigs']!,
          (value) => GetIpsecServersServerIkeConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      ipsecConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetIpsecServersServerIpsecConfig>(
          map['ipsecConfigs']!,
          (value) => GetIpsecServersServerIpsecConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ipsecServerId: pulumi.Input.fromValue(map['ipsecServerId'] as String),
      ipsecServerName: pulumi.Input.fromValue(map['ipsecServerName'] as String),
      localSubnet: pulumi.Input.fromValue(map['localSubnet'] as String),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      multiFactorAuthEnabled: pulumi.Input.fromValue(
        map['multiFactorAuthEnabled'] as bool,
      ),
      onlineClientCount: pulumi.Input.fromValue(
        map['onlineClientCount'] as int,
      ),
      psk: pulumi.Input.fromValue(map['psk'] as String),
      pskEnabled: pulumi.Input.fromValue(map['pskEnabled'] as bool),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}
