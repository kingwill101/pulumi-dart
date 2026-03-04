// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointRedisSettings {
  /// The password provided with the auth-role and auth-token options of the AuthType setting for a Redis target endpoint.
  final pulumi.Input<String>? authPassword;

  /// The type of authentication to perform when connecting to a Redis target. Options include `none`, `auth-token`, and `auth-role`. The `auth-token` option requires an `auth_password` value to be provided. The `auth-role` option requires `auth_user_name` and `auth_password` values to be provided.
  final pulumi.Input<String> authType;

  /// The username provided with the `auth-role` option of the AuthType setting for a Redis target endpoint.
  final pulumi.Input<String>? authUserName;

  /// Transmission Control Protocol (TCP) port for the endpoint.
  final pulumi.Input<int> port;

  /// Fully qualified domain name of the endpoint.
  final pulumi.Input<String> serverName;

  /// The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to connect to your Redis target endpoint.
  final pulumi.Input<String>? sslCaCertificateArn;

  /// The plaintext option doesn't provide Transport Layer Security (TLS) encryption for traffic between endpoint and database. Options include `plaintext`, `ssl-encryption`. The default is `ssl-encryption`.
  final pulumi.Input<String>? sslSecurityProtocol;

  /// Creates a new [EndpointRedisSettings].
  /// [authPassword] The password provided with the auth-role and auth-token options of the AuthType setting for a Redis target endpoint.
  /// [authType] The type of authentication to perform when connecting to a Redis target. Options include `none`, `auth-token`, and `auth-role`. The `auth-token` option requires an `auth_password` value to be provided. The `auth-role` option requires `auth_user_name` and `auth_password` values to be provided.
  /// [authUserName] The username provided with the `auth-role` option of the AuthType setting for a Redis target endpoint.
  /// [port] Transmission Control Protocol (TCP) port for the endpoint.
  /// [serverName] Fully qualified domain name of the endpoint.
  /// [sslCaCertificateArn] The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to connect to your Redis target endpoint.
  /// [sslSecurityProtocol] The plaintext option doesn't provide Transport Layer Security (TLS) encryption for traffic between endpoint and database. Options include `plaintext`, `ssl-encryption`. The default is `ssl-encryption`.
  EndpointRedisSettings({
    this.authPassword,
    required this.authType,
    this.authUserName,
    required this.port,
    required this.serverName,
    this.sslCaCertificateArn,
    this.sslSecurityProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authPassword': ?authPassword,
      'authType': authType,
      'authUserName': ?authUserName,
      'port': port,
      'serverName': serverName,
      'sslCaCertificateArn': ?sslCaCertificateArn,
      'sslSecurityProtocol': ?sslSecurityProtocol,
    };
  }

  factory EndpointRedisSettings.fromMap(Map<String, dynamic> map) {
    return EndpointRedisSettings(
      authPassword: (() {
        final guardedValue = map['authPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      authUserName: (() {
        final guardedValue = map['authUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sslCaCertificateArn: (() {
        final guardedValue = map['sslCaCertificateArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslSecurityProtocol: (() {
        final guardedValue = map['sslSecurityProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
