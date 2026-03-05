// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to PostgreSQL server
class PostgreSqlConnectionInfo {
  /// Additional connection settings
  final pulumi.Input<String>? additionalSettings;
  /// Authentication type to use for connection
  final pulumi.Input<String>? authentication;
  /// Data source
  final pulumi.Input<String>? dataSource;
  /// Name of the database
  final pulumi.Input<String>? databaseName;
  /// Whether to encrypt the connection
  final pulumi.Input<bool>? encryptConnection;
  /// Password credential.
  final pulumi.Input<String>? password;
  /// Port for Server
  final pulumi.Input<int> port;
  /// server brand version
  final pulumi.Input<String>? serverBrandVersion;
  /// Name of the server
  final pulumi.Input<String> serverName;
  /// server version
  final pulumi.Input<String>? serverVersion;
  /// Whether to trust the server certificate
  final pulumi.Input<bool>? trustServerCertificate;
  /// Type of connection info
  /// Expected value is 'PostgreSqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String>? userName;

  /// Creates a new [PostgreSqlConnectionInfo].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source
  /// [databaseName] Name of the database
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [port] Port for Server
  /// [serverBrandVersion] server brand version
  /// [serverName] Name of the server
  /// [serverVersion] server version
  /// [trustServerCertificate] Whether to trust the server certificate
  /// [type] Type of connection info
  /// [userName] User name
  PostgreSqlConnectionInfo({
    this.additionalSettings,
    this.authentication,
    this.dataSource,
    this.databaseName,
    this.encryptConnection,
    this.password,
    required this.port,
    this.serverBrandVersion,
    required this.serverName,
    this.serverVersion,
    this.trustServerCertificate,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': ?dataSource,
      'databaseName': ?databaseName,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'port': port,
      'serverBrandVersion': ?serverBrandVersion,
      'serverName': serverName,
      'serverVersion': ?serverVersion,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
    };
  }

  factory PostgreSqlConnectionInfo.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionInfo(
      additionalSettings: (() { final guardedValue = map['additionalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptConnection: (() { final guardedValue = map['encryptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      serverBrandVersion: (() { final guardedValue = map['serverBrandVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustServerCertificate: (() { final guardedValue = map['trustServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

