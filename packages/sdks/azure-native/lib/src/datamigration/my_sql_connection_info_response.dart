// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to MySQL server
class MySqlConnectionInfoResponse {
  /// Additional connection settings
  final pulumi.Input<String?>? additionalSettings;
  /// Authentication type to use for connection
  final pulumi.Input<String?>? authentication;
  /// Data source
  final pulumi.Input<String?>? dataSource;
  /// Whether to encrypt the connection
  final pulumi.Input<bool?>? encryptConnection;
  /// Password credential.
  final pulumi.Input<String?>? password;
  /// Port for Server
  final pulumi.Input<int> port;
  /// Name of the server
  final pulumi.Input<String> serverName;
  /// Type of connection info
  /// Expected value is 'MySqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String?>? userName;

  /// Creates a new [MySqlConnectionInfoResponse].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [port] Port for Server
  /// [serverName] Name of the server
  /// [type] Type of connection info
  /// [userName] User name
  MySqlConnectionInfoResponse({
    this.additionalSettings,
    this.authentication,
    this.dataSource,
    pulumi.Input<bool?>? encryptConnection,
    this.password,
    required this.port,
    required this.serverName,
    required this.type,
    this.userName,
  }) : encryptConnection = encryptConnection ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': ?dataSource,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'port': port,
      'serverName': serverName,
      'type': type,
      'userName': ?userName,
    };
  }

  factory MySqlConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionInfoResponse(
      additionalSettings: (() { final guardedValue = map['additionalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptConnection: (() { final guardedValue = map['encryptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
