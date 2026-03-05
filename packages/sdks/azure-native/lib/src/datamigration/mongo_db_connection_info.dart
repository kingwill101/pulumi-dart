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
      additionalSettings: (() { final guardedValue = map['additionalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptConnection: (() { final guardedValue = map['encryptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforceSSL: (() { final guardedValue = map['enforceSSL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverBrandVersion: (() { final guardedValue = map['serverBrandVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustServerCertificate: (() { final guardedValue = map['trustServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

