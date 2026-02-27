// ignore_for_file: unused_element, unnecessary_cast

class EndpointRedisSettings {
  /// The password provided with the auth-role and auth-token options of the AuthType setting for a Redis target endpoint.
  final String? authPassword;

  /// The type of authentication to perform when connecting to a Redis target. Options include `none`, `auth-token`, and `auth-role`. The `auth-token` option requires an `auth_password` value to be provided. The `auth-role` option requires `auth_user_name` and `auth_password` values to be provided.
  final String authType;

  /// The username provided with the `auth-role` option of the AuthType setting for a Redis target endpoint.
  final String? authUserName;

  /// Transmission Control Protocol (TCP) port for the endpoint.
  final int port;

  /// Fully qualified domain name of the endpoint.
  final String serverName;

  /// The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to connect to your Redis target endpoint.
  final String? sslCaCertificateArn;

  /// The plaintext option doesn't provide Transport Layer Security (TLS) encryption for traffic between endpoint and database. Options include `plaintext`, `ssl-encryption`. The default is `ssl-encryption`.
  final String? sslSecurityProtocol;

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
    final map = <String, dynamic>{};
    final authPasswordValue = authPassword;
    if (authPasswordValue != null) {
      map['authPassword'] = authPasswordValue;
    }
    map['authType'] = authType;
    final authUserNameValue = authUserName;
    if (authUserNameValue != null) {
      map['authUserName'] = authUserNameValue;
    }
    map['port'] = port;
    map['serverName'] = serverName;
    final sslCaCertificateArnValue = sslCaCertificateArn;
    if (sslCaCertificateArnValue != null) {
      map['sslCaCertificateArn'] = sslCaCertificateArnValue;
    }
    final sslSecurityProtocolValue = sslSecurityProtocol;
    if (sslSecurityProtocolValue != null) {
      map['sslSecurityProtocol'] = sslSecurityProtocolValue;
    }
    return map;
  }

  factory EndpointRedisSettings.fromMap(Map<String, dynamic> map) {
    return EndpointRedisSettings(
      authPassword:
          map['authPassword'] == null ? null : map['authPassword'] as String,
      authType: map['authType'] as String,
      authUserName:
          map['authUserName'] == null ? null : map['authUserName'] as String,
      port: map['port'] as int,
      serverName: map['serverName'] as String,
      sslCaCertificateArn: map['sslCaCertificateArn'] == null
          ? null
          : map['sslCaCertificateArn'] as String,
      sslSecurityProtocol: map['sslSecurityProtocol'] == null
          ? null
          : map['sslSecurityProtocol'] as String,
    );
  }
}
