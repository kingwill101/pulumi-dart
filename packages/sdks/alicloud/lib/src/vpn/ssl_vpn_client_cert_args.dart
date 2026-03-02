// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_ssl_vpn_client_cert_ssl_vpn_client_cert_args_doc}
/// The set of arguments for SslVpnClientCert.
/// {@endtemplate}
/// {@macro pulumi_vpn_ssl_vpn_client_cert_ssl_vpn_client_cert_args_doc}
class SslVpnClientCertArgs {
  /// The name of the client certificate.
  final pulumi.Input<String>? name;
  /// The ID of the SSL-VPN server.
  final pulumi.Input<String> sslVpnServerId;

  /// Creates a new [SslVpnClientCertArgs].
  /// [name] The name of the client certificate.
  /// [sslVpnServerId] The ID of the SSL-VPN server.
  SslVpnClientCertArgs({
    this.name,
    required this.sslVpnServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sslVpnServerId': sslVpnServerId,
    };
  }

  factory SslVpnClientCertArgs.fromMap(Map<String, dynamic> map) {
    return SslVpnClientCertArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sslVpnServerId: (map['sslVpnServerId'] as String).input(),
    );
  }
}

