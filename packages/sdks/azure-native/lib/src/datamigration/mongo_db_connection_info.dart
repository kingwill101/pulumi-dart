// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a connection to a MongoDB data source
class MongoDbConnectionInfo {
  /// Additional connection settings
  final pulumi.Input<String>? additionalSettings;
  /// Authentication type to use for connection
  final pulumi.Input<String>? authentication;
  /// A MongoDB connection string or blob container URL. The user name and password can be specified here or in the userName and password properties
  final pulumi.Input<String> connectionString;
  /// Data source
  final pulumi.Input<String>? dataSource;
  /// Whether to encrypt the connection
  final pulumi.Input<bool>? encryptConnection;
  final pulumi.Input<bool>? enforceSSL;
  /// Password credential.
  final pulumi.Input<String>? password;
  /// port for server
  final pulumi.Input<int>? port;
  /// server brand version
  final pulumi.Input<String>? serverBrandVersion;
  /// name of the server
  final pulumi.Input<String>? serverName;
  /// server version
  final pulumi.Input<String>? serverVersion;
  /// Whether to trust the server certificate
  final pulumi.Input<bool>? trustServerCertificate;
  /// Type of connection info
  /// Expected value is 'MongoDbConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String>? userName;

  /// Creates a new [MongoDbConnectionInfo].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [connectionString] A MongoDB connection string or blob container URL. The user name and password can be specified here or in the userName and password properties
  /// [dataSource] Data source
  /// [encryptConnection] Whether to encrypt the connection
  /// [enforceSSL] Optional.
  /// [password] Password credential.
  /// [port] port for server
  /// [serverBrandVersion] server brand version
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [trustServerCertificate] Whether to trust the server certificate
  /// [type] Type of connection info
  /// [userName] User name
  MongoDbConnectionInfo({
    this.additionalSettings,
    this.authentication,
    required this.connectionString,
    this.dataSource,
    this.encryptConnection,
    this.enforceSSL,
    this.password,
    this.port,
    this.serverBrandVersion,
    this.serverName,
    this.serverVersion,
    this.trustServerCertificate,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'connectionString': connectionString,
      'dataSource': ?dataSource,
      'encryptConnection': ?encryptConnection,
      'enforceSSL': ?enforceSSL,
      'password': ?password,
      'port': ?port,
      'serverBrandVersion': ?serverBrandVersion,
      'serverName': ?serverName,
      'serverVersion': ?serverVersion,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
    };
  }

  factory MongoDbConnectionInfo.fromMap(Map<String, dynamic> map) {
    return MongoDbConnectionInfo(
      additionalSettings: map['additionalSettings'] == null ? null : (map['additionalSettings'] as String).input(),
      authentication: map['authentication'] == null ? null : (map['authentication'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource'] as String).input(),
      encryptConnection: map['encryptConnection'] == null ? null : (map['encryptConnection'] as bool).input(),
      enforceSSL: map['enforceSSL'] == null ? null : (map['enforceSSL'] as bool).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      serverBrandVersion: map['serverBrandVersion'] == null ? null : (map['serverBrandVersion'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
      trustServerCertificate: map['trustServerCertificate'] == null ? null : (map['trustServerCertificate'] as bool).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

