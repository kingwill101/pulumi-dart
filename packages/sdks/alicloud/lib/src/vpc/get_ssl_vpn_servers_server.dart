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
      cipher: pulumi.Input.fromValue(map['cipher'] as String),
      clientIpPool: pulumi.Input.fromValue(map['clientIpPool'] as String),
      compress: pulumi.Input.fromValue(map['compress'] as bool),
      connections: pulumi.Input.fromValue(map['connections'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      localSubnet: pulumi.Input.fromValue(map['localSubnet'] as String),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}

