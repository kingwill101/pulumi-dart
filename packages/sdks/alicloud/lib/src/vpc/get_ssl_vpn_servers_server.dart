// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSslVpnServersServer {
  /// The encryption algorithm used.
  final pulumi.Input<String> cipher;
  /// The IP address pool of the client.
  final pulumi.Input<String> clientIpPool;
  /// Whether to compress.
  final pulumi.Input<bool> compress;
  /// The number of current connections.
  final pulumi.Input<int> connections;
  /// The time of creation.
  final pulumi.Input<String> createTime;
  /// The ID of the SSL-VPN server.
  final pulumi.Input<String> id;
  /// The public IP.
  final pulumi.Input<String> internetIp;
  /// The local subnet of the VPN connection.
  final pulumi.Input<String> localSubnet;
  /// The maximum number of connections.
  final pulumi.Input<int> maxConnections;
  /// The name of the SSL-VPN server.
  final pulumi.Input<String> name;
  /// The port used by the SSL-VPN server.
  final pulumi.Input<int> port;
  /// The protocol used by the SSL-VPN server.
  final pulumi.Input<String> proto;
  /// Use the VPN gateway ID as the search key.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [GetSslVpnServersServer].
  /// [cipher] The encryption algorithm used.
  /// [clientIpPool] The IP address pool of the client.
  /// [compress] Whether to compress.
  /// [connections] The number of current connections.
  /// [createTime] The time of creation.
  /// [id] The ID of the SSL-VPN server.
  /// [internetIp] The public IP.
  /// [localSubnet] The local subnet of the VPN connection.
  /// [maxConnections] The maximum number of connections.
  /// [name] The name of the SSL-VPN server.
  /// [port] The port used by the SSL-VPN server.
  /// [proto] The protocol used by the SSL-VPN server.
  /// [vpnGatewayId] Use the VPN gateway ID as the search key.
  GetSslVpnServersServer({
    required this.cipher,
    required this.clientIpPool,
    required this.compress,
    required this.connections,
    required this.createTime,
    required this.id,
    required this.internetIp,
    required this.localSubnet,
    required this.maxConnections,
    required this.name,
    required this.port,
    required this.proto,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': cipher,
      'clientIpPool': clientIpPool,
      'compress': compress,
      'connections': connections,
      'createTime': createTime,
      'id': id,
      'internetIp': internetIp,
      'localSubnet': localSubnet,
      'maxConnections': maxConnections,
      'name': name,
      'port': port,
      'proto': proto,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetSslVpnServersServer.fromMap(Map<String, dynamic> map) {
    return GetSslVpnServersServer(
      cipher: (map['cipher'] as String).input(),
      clientIpPool: (map['clientIpPool'] as String).input(),
      compress: (map['compress'] as bool).input(),
      connections: (map['connections'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      internetIp: (map['internetIp'] as String).input(),
      localSubnet: (map['localSubnet'] as String).input(),
      maxConnections: (map['maxConnections'] as int).input(),
      name: (map['name'] as String).input(),
      port: (map['port'] as int).input(),
      proto: (map['proto'] as String).input(),
      vpnGatewayId: (map['vpnGatewayId'] as String).input(),
    );
  }
}

