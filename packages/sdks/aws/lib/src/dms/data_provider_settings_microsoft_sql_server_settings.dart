// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsMicrosoftSqlServerSettings {
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the Microsoft SQL Server data provider.
  final pulumi.Input<String?>? databaseName;
  /// Port of the Microsoft SQL Server instance. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  final pulumi.Input<String?>? s3AccessRoleArn;
  /// S3 path containing the user-defined schema.
  final pulumi.Input<String?>? s3Path;
  /// Hostname of the Microsoft SQL Server instance.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsMicrosoftSqlServerSettings].
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the Microsoft SQL Server data provider.
  /// [port] Port of the Microsoft SQL Server instance. Valid values are between `1` and `65535`.
  /// [s3AccessRoleArn] ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  /// [s3Path] S3 path containing the user-defined schema.
  /// [serverName] Hostname of the Microsoft SQL Server instance.
  /// [sslMode] SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  const DataProviderSettingsMicrosoftSqlServerSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'port': ?port,
      's3AccessRoleArn': ?s3AccessRoleArn,
      's3Path': ?s3Path,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsMicrosoftSqlServerSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsMicrosoftSqlServerSettings(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      s3AccessRoleArn: (() { final guardedValue = map['s3AccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Path: (() { final guardedValue = map['s3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
