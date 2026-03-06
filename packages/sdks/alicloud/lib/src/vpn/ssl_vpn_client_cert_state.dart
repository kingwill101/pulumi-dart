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
  const SslVpnClientCertState({
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
      caCert: (() { final guardedValue = map['caCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCert: (() { final guardedValue = map['clientCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientConfig: (() { final guardedValue = map['clientConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslVpnServerId: (() { final guardedValue = map['sslVpnServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

