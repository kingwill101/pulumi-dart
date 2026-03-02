// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SslVpnClientCert resources.
class SslVpnClientCertState {
  /// The client ca cert.
  final pulumi.Input<String>? caCert;
  /// The client cert.
  final pulumi.Input<String>? clientCert;
  /// The vpn client config.
  final pulumi.Input<String>? clientConfig;
  /// The client key.
  final pulumi.Input<String>? clientKey;
  /// The name of the client certificate.
  final pulumi.Input<String>? name;
  /// The ID of the SSL-VPN server.
  final pulumi.Input<String>? sslVpnServerId;
  /// The status of the client certificate.
  final pulumi.Input<String>? status;

  /// Creates a new [SslVpnClientCertState].
  /// [caCert] The client ca cert.
  /// [clientCert] The client cert.
  /// [clientConfig] The vpn client config.
  /// [clientKey] The client key.
  /// [name] The name of the client certificate.
  /// [sslVpnServerId] The ID of the SSL-VPN server.
  /// [status] The status of the client certificate.
  SslVpnClientCertState({
    this.caCert,
    this.clientCert,
    this.clientConfig,
    this.clientKey,
    this.name,
    this.sslVpnServerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCert': ?caCert,
      'clientCert': ?clientCert,
      'clientConfig': ?clientConfig,
      'clientKey': ?clientKey,
      'name': ?name,
      'sslVpnServerId': ?sslVpnServerId,
      'status': ?status,
    };
  }

  factory SslVpnClientCertState.fromMap(Map<String, dynamic> map) {
    return SslVpnClientCertState(
      caCert: map['caCert'] == null ? null : (map['caCert'] as String).input(),
      clientCert: map['clientCert'] == null ? null : (map['clientCert'] as String).input(),
      clientConfig: map['clientConfig'] == null ? null : (map['clientConfig'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sslVpnServerId: map['sslVpnServerId'] == null ? null : (map['sslVpnServerId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

