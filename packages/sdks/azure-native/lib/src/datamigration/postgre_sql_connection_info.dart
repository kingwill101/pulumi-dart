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
      additionalSettings: map['additionalSettings'] == null ? null : (map['additionalSettings'] as String).input(),
      authentication: map['authentication'] == null ? null : (map['authentication'] as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      encryptConnection: map['encryptConnection'] == null ? null : (map['encryptConnection'] as bool).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      serverBrandVersion: map['serverBrandVersion'] == null ? null : (map['serverBrandVersion'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
      trustServerCertificate: map['trustServerCertificate'] == null ? null : (map['trustServerCertificate'] as bool).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

