// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProviderSettingsDocDbSettings {
  /// ARN of the DMS certificate used for the SSL connection.
  final pulumi.Input<String?>? certificateArn;
  /// Database name on the DocumentDB data provider.
  final pulumi.Input<String?>? databaseName;
  /// Port of the DocumentDB server. Valid values are between `1` and `65535`.
  final pulumi.Input<int?>? port;
  /// Hostname of the DocumentDB server.
  final pulumi.Input<String?>? serverName;
  /// SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  final pulumi.Input<String?>? sslMode;

  /// Creates a new [DataProviderSettingsDocDbSettings].
  /// [certificateArn] ARN of the DMS certificate used for the SSL connection.
  /// [databaseName] Database name on the DocumentDB data provider.
  /// [port] Port of the DocumentDB server. Valid values are between `1` and `65535`.
  /// [serverName] Hostname of the DocumentDB server.
  /// [sslMode] SSL mode for the connection. Valid values: `none`, `require`, `verify-ca`, and `verify-full`. Defaults to `none`.
  const DataProviderSettingsDocDbSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.serverName,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'port': ?port,
      'serverName': ?serverName,
      'sslMode': ?sslMode,
    };
  }

  factory DataProviderSettingsDocDbSettings.fromMap(Map<String, dynamic> map) {
    return DataProviderSettingsDocDbSettings(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
