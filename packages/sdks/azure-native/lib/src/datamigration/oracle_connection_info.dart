// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to Oracle server
class OracleConnectionInfo {
  /// Authentication type to use for connection
  final pulumi.Input<String>? authentication;
  /// EZConnect or TNSName connection string.
  final pulumi.Input<String> dataSource;
  /// Password credential.
  final pulumi.Input<String>? password;
  /// port for server
  final pulumi.Input<int>? port;
  /// name of the server
  final pulumi.Input<String>? serverName;
  /// server version
  final pulumi.Input<String>? serverVersion;
  /// Type of connection info
  /// Expected value is 'OracleConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String>? userName;

  /// Creates a new [OracleConnectionInfo].
  /// [authentication] Authentication type to use for connection
  /// [dataSource] EZConnect or TNSName connection string.
  /// [password] Password credential.
  /// [port] port for server
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [type] Type of connection info
  /// [userName] User name
  OracleConnectionInfo({
    this.authentication,
    required this.dataSource,
    this.password,
    this.port,
    this.serverName,
    this.serverVersion,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'dataSource': dataSource,
      'password': ?password,
      'port': ?port,
      'serverName': ?serverName,
      'serverVersion': ?serverVersion,
      'type': type,
      'userName': ?userName,
    };
  }

  factory OracleConnectionInfo.fromMap(Map<String, dynamic> map) {
    return OracleConnectionInfo(
      authentication: map['authentication'] == null ? null : (map['authentication'] as String).input(),
      dataSource: (map['dataSource'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

