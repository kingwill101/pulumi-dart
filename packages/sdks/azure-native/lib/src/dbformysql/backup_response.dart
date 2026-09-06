// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class BackupResponse {
  /// Backup interval hours for the server.
  final pulumi.Input<int?>? backupIntervalHours;
  /// Backup retention days for the server.
  final pulumi.Input<int?>? backupRetentionDays;
  /// Earliest restore point creation time (ISO8601 format)
  final pulumi.Input<String> earliestRestoreDate;
  /// Whether or not geo redundant backup is enabled.
  final pulumi.Input<String?>? geoRedundantBackup;

  /// Creates a new [BackupResponse].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [earliestRestoreDate] Earliest restore point creation time (ISO8601 format)
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  BackupResponse({
    this.backupIntervalHours,
    this.backupRetentionDays,
    required this.earliestRestoreDate,
    pulumi.Input<String?>? geoRedundantBackup,
  }) : geoRedundantBackup = geoRedundantBackup ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'earliestRestoreDate': earliestRestoreDate,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory BackupResponse.fromMap(Map<String, dynamic> map) {
    return BackupResponse(
      backupIntervalHours: (() { final guardedValue = map['backupIntervalHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      earliestRestoreDate: pulumi.Input.fromValue(map['earliestRestoreDate'] as String),
      geoRedundantBackup: (() { final guardedValue = map['geoRedundantBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
