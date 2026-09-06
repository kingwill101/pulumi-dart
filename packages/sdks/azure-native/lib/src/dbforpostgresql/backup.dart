// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup properties of a server.
class Backup {
  /// Backup retention days for the server.
  final pulumi.Input<int?>? backupRetentionDays;
  /// Indicates if the server is configured to create geographically redundant backups.
  final pulumi.Input<dynamic>? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Indicates if the server is configured to create geographically redundant backups.
  Backup({
    pulumi.Input<int?>? backupRetentionDays,
    pulumi.Input<dynamic>? geoRedundantBackup,
  }) : backupRetentionDays = backupRetentionDays ?? pulumi.Input.fromValue(7), geoRedundantBackup = geoRedundantBackup ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      geoRedundantBackup: (() { final guardedValue = map['geoRedundantBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
