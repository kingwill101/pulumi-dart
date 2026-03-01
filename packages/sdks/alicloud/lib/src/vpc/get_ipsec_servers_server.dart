// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipsec_servers_server_ike_config.dart';
import 'get_ipsec_servers_server_ipsec_config.dart';

class GetIpsecServersServer {
  /// The CIDR block of the client, which is assigned an access address to the virtual NIC of the client.
  final String clientIpPool;
  /// The creation time of the IPsec server. T represents the delimiter, and Z represents UTC, which is World Standard Time.
  final String createTime;
  /// Indicates whether the current IPsec tunnel is deleted and negotiations are reinitiated.
  final bool effectImmediately;
  /// The ID of the Ipsec Server.
  final String id;
  /// The ID of the Identity as a Service (IDaaS) instance.
  final String idaasInstanceId;
  /// The configurations of Phase 1 negotiations.
  final List<GetIpsecServersServerIkeConfig> ikeConfigs;
  /// The public IP address of the VPN gateway.
  final String internetIp;
  /// The configuration of Phase 2 negotiations.
  final List<GetIpsecServersServerIpsecConfig> ipsecConfigs;
  /// The ID of the IPsec server.
  final String ipsecServerId;
  /// The name of the IPsec server.
  final String ipsecServerName;
  /// Local network segment: the network segment on The VPC side that needs to be interconnected with the client network segment.
  final String localSubnet;
  /// The number of SSL connections of the VPN gateway. SSL-VPN the number of SSL connections shared with the IPsec server. For example, if the number of SSL connections is 5 and you have three SSL clients connected to the SSL-VPN, you can also use two clients to connect to the IPsec server.
  final int maxConnections;
  /// Whether the two-factor authentication function has been turned on.
  final bool multiFactorAuthEnabled;
  /// The number of clients that have connected to the IPsec server.
  final int onlineClientCount;
  /// The pre-shared key.
  final String psk;
  /// Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  final bool pskEnabled;
  /// The ID of the VPN gateway.
  final String vpnGatewayId;

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
      'ikeConfigs': pulumi.Input.encodeList<GetIpsecServersServerIkeConfig, Map<String, dynamic>>(ikeConfigs, (value) => value.toMap()),
      'internetIp': internetIp,
      'ipsecConfigs': pulumi.Input.encodeList<GetIpsecServersServerIpsecConfig, Map<String, dynamic>>(ipsecConfigs, (value) => value.toMap()),
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
      clientIpPool: map['clientIpPool'] as String,
      createTime: map['createTime'] as String,
      effectImmediately: map['effectImmediately'] as bool,
      id: map['id'] as String,
      idaasInstanceId: map['idaasInstanceId'] as String,
      ikeConfigs: pulumi.Input.decodeList<GetIpsecServersServerIkeConfig>(map['ikeConfigs'], (value) => GetIpsecServersServerIkeConfig.fromMap((value as Map).cast<String, dynamic>())),
      internetIp: map['internetIp'] as String,
      ipsecConfigs: pulumi.Input.decodeList<GetIpsecServersServerIpsecConfig>(map['ipsecConfigs'], (value) => GetIpsecServersServerIpsecConfig.fromMap((value as Map).cast<String, dynamic>())),
      ipsecServerId: map['ipsecServerId'] as String,
      ipsecServerName: map['ipsecServerName'] as String,
      localSubnet: map['localSubnet'] as String,
      maxConnections: map['maxConnections'] as int,
      multiFactorAuthEnabled: map['multiFactorAuthEnabled'] as bool,
      onlineClientCount: map['onlineClientCount'] as int,
      psk: map['psk'] as String,
      pskEnabled: map['pskEnabled'] as bool,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

