// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsSybaseAseSettings {
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the SAP ASE data provider.
  final pulumi.Input<String?>? databaseName;
  /// Whether to encrypt the connection password during transmission. Defaults to `true`.
  final pulumi.Input<bool?>? encryptPassword;
  /// Port of the SAP ASE server. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// Hostname of the SAP ASE server.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsSybaseAseSettings].
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the SAP ASE data provider.
  /// [encryptPassword] Whether to encrypt the connection password during transmission. Defaults to `true`.
  /// [port] Port of the SAP ASE server. Valid values are between `1` and `65535`.
  /// [serverName] Hostname of the SAP ASE server.
  /// [sslMode] SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  const DataProviderSettingsSybaseAseSettings({
    this.certificateArn,
    this.databaseName,
    this.encryptPassword,
    this.port,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'encryptPassword': ?encryptPassword,
      'port': ?port,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsSybaseAseSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsSybaseAseSettings(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptPassword: (() { final guardedValue = map['encryptPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
