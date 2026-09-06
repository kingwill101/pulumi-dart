// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to Oracle server
class OracleConnectionInfo {
  /// Authentication type to use for connection
  final pulumi.Input<dynamic>? authentication;
  /// EZConnect or TNSName connection string.
  final pulumi.Input<String> dataSource;
  /// Password credential.
  final pulumi.Input<String?>? password;
  /// port for server
  final pulumi.Input<int?>? port;
  /// name of the server
  final pulumi.Input<String?>? serverName;
  /// server version
  final pulumi.Input<String?>? serverVersion;
  /// Type of connection info
  /// Expected value is 'OracleConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String?>? userName;

  /// Creates a new [OracleConnectionInfo].
  /// [authentication] Authentication type to use for connection
  /// [dataSource] EZConnect or TNSName connection string.
  /// [password] Password credential.
  /// [port] port for server
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [type] Type of connection info
  /// [userName] User name
  const OracleConnectionInfo({
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
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
