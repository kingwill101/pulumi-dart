// ignore_for_file: unused_element, unnecessary_cast


class GetSslVpnServersServer {
  /// The encryption algorithm used.
  final String cipher;
  /// The IP address pool of the client.
  final String clientIpPool;
  /// Whether to compress.
  final bool compress;
  /// The number of current connections.
  final int connections;
  /// The time of creation.
  final String createTime;
  /// The ID of the SSL-VPN server.
  final String id;
  /// The public IP.
  final String internetIp;
  /// The local subnet of the VPN connection.
  final String localSubnet;
  /// The maximum number of connections.
  final int maxConnections;
  /// The name of the SSL-VPN server.
  final String name;
  /// The port used by the SSL-VPN server.
  final int port;
  /// The protocol used by the SSL-VPN server.
  final String proto;
  /// Use the VPN gateway ID as the search key.
  final String vpnGatewayId;

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
      cipher: map['cipher'] as String,
      clientIpPool: map['clientIpPool'] as String,
      compress: map['compress'] as bool,
      connections: map['connections'] as int,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      internetIp: map['internetIp'] as String,
      localSubnet: map['localSubnet'] as String,
      maxConnections: map['maxConnections'] as int,
      name: map['name'] as String,
      port: map['port'] as int,
      proto: map['proto'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

