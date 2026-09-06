// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class Backup {
  /// Backup interval hours for the server.
  final pulumi.Input<int?>? backupIntervalHours;
  /// Backup retention days for the server.
  final pulumi.Input<int?>? backupRetentionDays;
  /// Whether or not geo redundant backup is enabled.
  final pulumi.Input<dynamic>? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  Backup({
    this.backupIntervalHours,
    this.backupRetentionDays,
    pulumi.Input<dynamic>? geoRedundantBackup,
  }) : geoRedundantBackup = geoRedundantBackup ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupIntervalHours: (() { final guardedValue = map['backupIntervalHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      backupRetentionDays: (() { final guardedValue = map['backupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      geoRedundantBackup: (() { final guardedValue = map['geoRedundantBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
