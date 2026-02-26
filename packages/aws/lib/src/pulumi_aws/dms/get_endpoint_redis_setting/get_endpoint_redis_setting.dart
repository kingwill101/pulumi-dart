// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointRedisSetting {
  final String authPassword;
  final String authType;
  final String authUserName;
  final int port;
  final String serverName;
  final String sslCaCertificateArn;
  final String sslSecurityProtocol;

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
    final map = <String, dynamic>{};
    map['authPassword'] = authPassword;
    map['authType'] = authType;
    map['authUserName'] = authUserName;
    map['port'] = port;
    map['serverName'] = serverName;
    map['sslCaCertificateArn'] = sslCaCertificateArn;
    map['sslSecurityProtocol'] = sslSecurityProtocol;
    return map;
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
