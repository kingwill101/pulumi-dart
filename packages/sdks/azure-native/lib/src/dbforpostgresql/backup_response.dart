// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup properties of a server.
class BackupResponse {
  /// Backup retention days for the server.
  final pulumi.Input<int?>? backupRetentionDays;
  /// Earliest restore point time (ISO8601 format) for a server.
  final pulumi.Input<String> earliestRestoreDate;
  /// Indicates if the server is configured to create geographically redundant backups.
  final pulumi.Input<String?>? geoRedundantBackup;

  /// Creates a new [BackupResponse].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [earliestRestoreDate] Earliest restore point time (ISO8601 format) for a server.
  /// [geoRedundantBackup] Indicates if the server is configured to create geographically redundant backups.
  BackupResponse({
    pulumi.Input<int?>? backupRetentionDays,
    required this.earliestRestoreDate,
    pulumi.Input<String?>? geoRedundantBackup,
  }) : backupRetentionDays = backupRetentionDays ?? pulumi.Input.fromValue(7), geoRedundantBackup = geoRedundantBackup ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'earliestRestoreDate': earliestRestoreDate,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory BackupResponse.fromMap(Map<String, dynamic> map) {
    return BackupResponse(
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      earliestRestoreDate: pulumi.Input.fromValue(map['earliestRestoreDate'] as String),
      geoRedundantBackup: (() { final guardedValue = map['geoRedundantBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
