// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsMongoDbSettings {
  /// Authentication mechanism for the connection. Valid values: `default`, `mongodbCr`, and `scramSha1`.
  final pulumi.Input<String?>? authMechanism;
  /// Database used to verify credentials. Defaults to `admin`. Not used when `authType` is `no`.
  final pulumi.Input<String?>? authSource;
  /// Authentication type for the connection. Valid values: `no` and `password`.
  final pulumi.Input<String?>? authType;
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the MongoDB data provider.
  final pulumi.Input<String?>? databaseName;
  /// Port of the MongoDB server. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// Hostname of the MongoDB server.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsMongoDbSettings].
  /// [authMechanism] Authentication mechanism for the connection. Valid values: `default`, `mongodbCr`, and `scramSha1`.
  /// [authSource] Database used to verify credentials. Defaults to `admin`. Not used when `authType` is `no`.
  /// [authType] Authentication type for the connection. Valid values: `no` and `password`.
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the MongoDB data provider.
  /// [port] Port of the MongoDB server. Valid values are between `1` and `65535`.
  /// [serverName] Hostname of the MongoDB server.
  /// [sslMode] SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  const DataProviderSettingsMongoDbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.certificateArn,
    this.databaseName,
    this.port,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMechanism': ?authMechanism,
      'authSource': ?authSource,
      'authType': ?authType,
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'port': ?port,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsMongoDbSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsMongoDbSettings(
      authMechanism: (() { final guardedValue = map['authMechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authSource: (() { final guardedValue = map['authSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
