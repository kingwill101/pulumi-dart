// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointRedisSetting {
  final pulumi.Input<String> authPassword;
  final pulumi.Input<String> authType;
  final pulumi.Input<String> authUserName;
  final pulumi.Input<int> port;
  final pulumi.Input<String> serverName;
  final pulumi.Input<String> sslCaCertificateArn;
  final pulumi.Input<String> sslSecurityProtocol;

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
      authPassword: (map['authPassword'] as String).input(),
      authType: (map['authType'] as String).input(),
      authUserName: (map['authUserName'] as String).input(),
      port: (map['port'] as int).input(),
      serverName: (map['serverName'] as String).input(),
      sslCaCertificateArn: (map['sslCaCertificateArn'] as String).input(),
      sslSecurityProtocol: (map['sslSecurityProtocol'] as String).input(),
    );
  }
}

