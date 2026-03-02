// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_ssl_vpn_server_ssl_vpn_server_args_doc}
/// The set of arguments for SslVpnServer.
/// {@endtemplate}
/// {@macro pulumi_vpn_ssl_vpn_server_ssl_vpn_server_args_doc}
class SslVpnServerArgs {
  /// The encryption algorithm that is used in the SSL-VPN connection. Valid values: `AES-128-CBC`,`AES-192-CBC`,`AES-256-CBC`,`none`. Default value: `AES-128-CBC`.
  /// * `AES-128-CBC` - the AES-128-CBC algorithm.
  /// * `AES-192-CBC` - the AES-192-CBC algorithm.
  /// * `AES-256-CBC` - the AES-256-CBC algorithm.
  final pulumi.Input<String>? cipher;
  /// The CIDR block from which access addresses are allocated to the virtual network interface card of the client.
  final pulumi.Input<String> clientIpPool;
  /// Specifies whether to enable data compression. Valid values: `true`,`false`. Default value: `false`
  final pulumi.Input<bool>? compress;
  /// The CIDR block to be accessed by the client through the SSL-VPN connection. It supports to set multi CIDRs by comma join ways, like `10.0.1.0/24,10.0.2.0/24,10.0.3.0/24`.
  final pulumi.Input<String> localSubnet;
  /// The name of the SSL-VPN server.
  final pulumi.Input<String>? name;
  /// The port used by the SSL-VPN server. The default value is `1194`.The following ports cannot be used: [22, 2222, 22222, 9000, 9001, 9002, 7505, 80, 443, 53, 68, 123, 4510, 4560, 500, 4500].
  final pulumi.Input<int>? port;
  /// The protocol used by the SSL-VPN server. Valid value: UDP(default) |TCP
  final pulumi.Input<String>? protocol;
  /// The ID of the VPN gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [SslVpnServerArgs].
  /// [cipher] The encryption algorithm that is used in the SSL-VPN connection. Valid values: `AES-128-CBC`,`AES-192-CBC`,`AES-256-CBC`,`none`. Default value: `AES-128-CBC`.
  /// [clientIpPool] The CIDR block from which access addresses are allocated to the virtual network interface card of the client.
  /// [compress] Specifies whether to enable data compression. Valid values: `true`,`false`. Default value: `false`
  /// [localSubnet] The CIDR block to be accessed by the client through the SSL-VPN connection. It supports to set multi CIDRs by comma join ways, like `10.0.1.0/24,10.0.2.0/24,10.0.3.0/24`.
  /// [name] The name of the SSL-VPN server.
  /// [port] The port used by the SSL-VPN server. The default value is `1194`.The following ports cannot be used: [22, 2222, 22222, 9000, 9001, 9002, 7505, 80, 443, 53, 68, 123, 4510, 4560, 500, 4500].
  /// [protocol] The protocol used by the SSL-VPN server. Valid value: UDP(default) |TCP
  /// [vpnGatewayId] The ID of the VPN gateway.
  SslVpnServerArgs({
    this.cipher,
    required this.clientIpPool,
    this.compress,
    required this.localSubnet,
    this.name,
    this.port,
    this.protocol,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?cipher,
      'clientIpPool': clientIpPool,
      'compress': ?compress,
      'localSubnet': localSubnet,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory SslVpnServerArgs.fromMap(Map<String, dynamic> map) {
    return SslVpnServerArgs(
      cipher: map['cipher'] == null ? null : (map['cipher'] as String).input(),
      clientIpPool: (map['clientIpPool'] as String).input(),
      compress: map['compress'] == null ? null : (map['compress'] as bool).input(),
      localSubnet: (map['localSubnet'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      vpnGatewayId: (map['vpnGatewayId'] as String).input(),
    );
  }
}

