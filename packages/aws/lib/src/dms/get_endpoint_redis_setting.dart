// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointRedisSetting {
  final String authPassword;
  final String authType;
  final String authUserName;
  final int port;
  final String serverName;
  final String sslCaCertificateArn;
  final String sslSecurityProtocol;

  /// Creates a new [GetEndpointRedisSetting].
  /// [authPassword] Required.
  /// [authType] Required.
  /// [authUserName] Required.
  /// [port] Required.
  /// [serverName] Required.
  /// [sslCaCertificateArn] Required.
  /// [sslSecurityProtocol] Required.
  GetEndpointRedisSetting({
    required this.authPassword,
    required this.authType,
    required this.authUserName,
    required this.port,
    required this.serverName,
    required this.sslCaCertificateArn,
    required this.sslSecurityProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authPassword': authPassword,
      'authType': authType,
      'authUserName': authUserName,
      'port': port,
      'serverName': serverName,
      'sslCaCertificateArn': sslCaCertificateArn,
      'sslSecurityProtocol': sslSecurityProtocol,
    };
  }

  factory GetEndpointRedisSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointRedisSetting(
      authPassword: map['authPassword'] as String,
      authType: map['authType'] as String,
      authUserName: map['authUserName'] as String,
      port: map['port'] as int,
      serverName: map['serverName'] as String,
      sslCaCertificateArn: map['sslCaCertificateArn'] as String,
      sslSecurityProtocol: map['sslSecurityProtocol'] as String,
    );
  }
}

