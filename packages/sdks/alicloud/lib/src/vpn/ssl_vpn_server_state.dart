// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SslVpnServer resources.
class SslVpnServerState {
  /// The encryption algorithm that is used in the SSL-VPN connection. Valid values: `AES-128-CBC`,`AES-192-CBC`,`AES-256-CBC`,`none`. Default value: `AES-128-CBC`.
  /// * `AES-128-CBC` - the AES-128-CBC algorithm.
  /// * `AES-192-CBC` - the AES-192-CBC algorithm.
  /// * `AES-256-CBC` - the AES-256-CBC algorithm.
  final pulumi.Input<String>? cipher;
  /// The CIDR block from which access addresses are allocated to the virtual network interface card of the client.
  final pulumi.Input<String>? clientIpPool;
  /// Specifies whether to enable data compression. Valid values: `true`,`false`. Default value: `false`
  final pulumi.Input<bool>? compress;
  /// The number of current connections.
  final pulumi.Input<int>? connections;
  /// The internet IP of the SSL-VPN server.
  final pulumi.Input<String>? internetIp;
  /// The CIDR block to be accessed by the client through the SSL-VPN connection. It supports to set multi CIDRs by comma join ways, like `10.0.1.0/24,10.0.2.0/24,10.0.3.0/24`.
  final pulumi.Input<String>? localSubnet;
  /// The maximum number of connections.
  final pulumi.Input<int>? maxConnections;
  /// The name of the SSL-VPN server.
  final pulumi.Input<String>? name;
  /// The port used by the SSL-VPN server. The default value is `1194`.The following ports cannot be used: [22, 2222, 22222, 9000, 9001, 9002, 7505, 80, 443, 53, 68, 123, 4510, 4560, 500, 4500].
  final pulumi.Input<int>? port;
  /// The protocol used by the SSL-VPN server. Valid value: UDP(default) |TCP
  final pulumi.Input<String>? protocol;
  /// The ID of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [SslVpnServerState].
  /// [cipher] The encryption algorithm that is used in the SSL-VPN connection. Valid values: `AES-128-CBC`,`AES-192-CBC`,`AES-256-CBC`,`none`. Default value: `AES-128-CBC`.
  /// [clientIpPool] The CIDR block from which access addresses are allocated to the virtual network interface card of the client.
  /// [compress] Specifies whether to enable data compression. Valid values: `true`,`false`. Default value: `false`
  /// [connections] The number of current connections.
  /// [internetIp] The internet IP of the SSL-VPN server.
  /// [localSubnet] The CIDR block to be accessed by the client through the SSL-VPN connection. It supports to set multi CIDRs by comma join ways, like `10.0.1.0/24,10.0.2.0/24,10.0.3.0/24`.
  /// [maxConnections] The maximum number of connections.
  /// [name] The name of the SSL-VPN server.
  /// [port] The port used by the SSL-VPN server. The default value is `1194`.The following ports cannot be used: [22, 2222, 22222, 9000, 9001, 9002, 7505, 80, 443, 53, 68, 123, 4510, 4560, 500, 4500].
  /// [protocol] The protocol used by the SSL-VPN server. Valid value: UDP(default) |TCP
  /// [vpnGatewayId] The ID of the VPN gateway.
  SslVpnServerState({
    this.cipher,
    this.clientIpPool,
    this.compress,
    this.connections,
    this.internetIp,
    this.localSubnet,
    this.maxConnections,
    this.name,
    this.port,
    this.protocol,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?cipher,
      'clientIpPool': ?clientIpPool,
      'compress': ?compress,
      'connections': ?connections,
      'internetIp': ?internetIp,
      'localSubnet': ?localSubnet,
      'maxConnections': ?maxConnections,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory SslVpnServerState.fromMap(Map<String, dynamic> map) {
    return SslVpnServerState(
      cipher: map['cipher'] == null ? null : (map['cipher']! as String).input(),
      clientIpPool: map['clientIpPool'] == null ? null : (map['clientIpPool']! as String).input(),
      compress: map['compress'] == null ? null : (map['compress']! as bool).input(),
      connections: map['connections'] == null ? null : (map['connections']! as int).input(),
      internetIp: map['internetIp'] == null ? null : (map['internetIp']! as String).input(),
      localSubnet: map['localSubnet'] == null ? null : (map['localSubnet']! as String).input(),
      maxConnections: map['maxConnections'] == null ? null : (map['maxConnections']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId']! as String).input(),
    );
  }
}

