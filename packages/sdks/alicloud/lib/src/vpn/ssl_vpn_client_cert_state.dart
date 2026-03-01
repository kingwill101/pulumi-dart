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
    pulumi.Output<String>? caCert,
    pulumi.Output<String>? clientCert,
    pulumi.Output<String>? clientConfig,
    pulumi.Output<String>? clientKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sslVpnServerId,
    pulumi.Output<String>? status,
  }) :
      caCert = pulumi.Input.asOptionalInput<String>(caCert),
      clientCert = pulumi.Input.asOptionalInput<String>(clientCert),
      clientConfig = pulumi.Input.asOptionalInput<String>(clientConfig),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      sslVpnServerId = pulumi.Input.asOptionalInput<String>(sslVpnServerId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      caCert: map['caCert'] == null ? null : pulumi.Output.create<String>(map['caCert'] as String),
      clientCert: map['clientCert'] == null ? null : pulumi.Output.create<String>(map['clientCert'] as String),
      clientConfig: map['clientConfig'] == null ? null : pulumi.Output.create<String>(map['clientConfig'] as String),
      clientKey: map['clientKey'] == null ? null : pulumi.Output.create<String>(map['clientKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sslVpnServerId: map['sslVpnServerId'] == null ? null : pulumi.Output.create<String>(map['sslVpnServerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

