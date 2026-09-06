// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to SQL database server
class SqlConnectionInfo {
  /// Additional connection settings
  final pulumi.Input<String?>? additionalSettings;
  /// Authentication type to use for connection
  final pulumi.Input<dynamic>? authentication;
  /// Data source in the format Protocol:MachineName\SQLServerInstanceName,PortNumber
  final pulumi.Input<String> dataSource;
  /// Whether to encrypt the connection
  final pulumi.Input<bool?>? encryptConnection;
  /// Password credential.
  final pulumi.Input<String?>? password;
  /// Server platform type for connection
  final pulumi.Input<dynamic>? platform;
  /// Port for Server
  final pulumi.Input<int?>? port;
  /// Represents the ID of an HTTP resource represented by an Azure resource provider.
  final pulumi.Input<String?>? resourceId;
  /// server brand version
  final pulumi.Input<String?>? serverBrandVersion;
  /// name of the server
  final pulumi.Input<String?>? serverName;
  /// server version
  final pulumi.Input<String?>? serverVersion;
  /// Whether to trust the server certificate
  final pulumi.Input<bool?>? trustServerCertificate;
  /// Type of connection info
  /// Expected value is 'SqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String?>? userName;

  /// Creates a new [SqlConnectionInfo].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source in the format Protocol:MachineName\SQLServerInstanceName,PortNumber
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [platform] Server platform type for connection
  /// [port] Port for Server
  /// [resourceId] Represents the ID of an HTTP resource represented by an Azure resource provider.
  /// [serverBrandVersion] server brand version
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [trustServerCertificate] Whether to trust the server certificate
  /// [type] Type of connection info
  /// [userName] User name
  SqlConnectionInfo({
    this.additionalSettings,
    this.authentication,
    required this.dataSource,
    pulumi.Input<bool?>? encryptConnection,
    this.password,
    this.platform,
    this.port,
    this.resourceId,
    this.serverBrandVersion,
    this.serverName,
    this.serverVersion,
    pulumi.Input<bool?>? trustServerCertificate,
    required this.type,
    this.userName,
  }) : encryptConnection = encryptConnection ?? pulumi.Input.fromValue(true), trustServerCertificate = trustServerCertificate ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': dataSource,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'platform': ?platform,
      'port': ?port,
      'resourceId': ?resourceId,
      'serverBrandVersion': ?serverBrandVersion,
      'serverName': ?serverName,
      'serverVersion': ?serverVersion,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
    };
  }

  factory SqlConnectionInfo.fromMap(Map<String, dynamic> map) {
    return SqlConnectionInfo(
      additionalSettings: (() { final guardedValue = map['additionalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      encryptConnection: (() { final guardedValue = map['encryptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverBrandVersion: (() { final guardedValue = map['serverBrandVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustServerCertificate: (() { final guardedValue = map['trustServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
