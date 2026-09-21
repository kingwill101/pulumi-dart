// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsIbmDb2LuwSettings {
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the IBM DB2 LUW data provider.
  final pulumi.Input<String?>? databaseName;
  /// Integer identifying the encryption algorithm for the connection. When omitted, AWS uses its default behavior.
  final pulumi.Input<int?>? encryptionAlgorithm;
  /// Port of the IBM DB2 LUW server. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  final pulumi.Input<String?>? s3AccessRoleArn;
  /// S3 path containing the user-defined schema.
  final pulumi.Input<String?>? s3Path;
  /// Integer identifying the authentication mechanism for the connection. When omitted, AWS uses its default behavior.
  final pulumi.Input<int?>? securityMechanism;
  /// Hostname of the IBM DB2 LUW server.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none` and `verify-ca`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsIbmDb2LuwSettings].
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the IBM DB2 LUW data provider.
  /// [encryptionAlgorithm] Integer identifying the encryption algorithm for the connection. When omitted, AWS uses its default behavior.
  /// [port] Port of the IBM DB2 LUW server. Valid values are between `1` and `65535`.
  /// [s3AccessRoleArn] ARN of the IAM role used to access the S3 bucket containing the user-defined schema.
  /// [s3Path] S3 path containing the user-defined schema.
  /// [securityMechanism] Integer identifying the authentication mechanism for the connection. When omitted, AWS uses its default behavior.
  /// [serverName] Hostname of the IBM DB2 LUW server.
  /// [sslMode] SSL mode for the connection. Valid values: `none` and `verify-ca`. Defaults to `none`.
  const DataProviderSettingsIbmDb2LuwSettings({
    this.certificateArn,
    this.databaseName,
    this.encryptionAlgorithm,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.securityMechanism,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'port': ?port,
      's3AccessRoleArn': ?s3AccessRoleArn,
      's3Path': ?s3Path,
      'securityMechanism': ?securityMechanism,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsIbmDb2LuwSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsIbmDb2LuwSettings(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionAlgorithm: (() { final guardedValue = map['encryptionAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      s3AccessRoleArn: (() { final guardedValue = map['s3AccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Path: (() { final guardedValue = map['s3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityMechanism: (() { final guardedValue = map['securityMechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
