// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseLongTermBackupSchedule {
  /// Whether the long-term backup schedule is disabled.
  final pulumi.Input<bool?>? isDisabled;
  /// Backup cadence. Valid values are `ONE_TIME`, `WEEKLY`, `MONTHLY`, and `YEARLY`.
  final pulumi.Input<String?>? repeatCadence;
  /// Backup retention period. Valid values are from `90` through `3650`.
  final pulumi.Input<int?>? retentionPeriodInDays;
  /// RFC3339 timestamp at which the backup is taken.
  final pulumi.Input<String?>? timeOfBackup;

  /// Creates a new [AutonomousDatabaseLongTermBackupSchedule].
  /// [isDisabled] Whether the long-term backup schedule is disabled.
  /// [repeatCadence] Backup cadence. Valid values are `ONE_TIME`, `WEEKLY`, `MONTHLY`, and `YEARLY`.
  /// [retentionPeriodInDays] Backup retention period. Valid values are from `90` through `3650`.
  /// [timeOfBackup] RFC3339 timestamp at which the backup is taken.
  const AutonomousDatabaseLongTermBackupSchedule({
    this.isDisabled,
    this.repeatCadence,
    this.retentionPeriodInDays,
    this.timeOfBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDisabled': ?isDisabled,
      'repeatCadence': ?repeatCadence,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'timeOfBackup': ?timeOfBackup,
    };
  }

  factory AutonomousDatabaseLongTermBackupSchedule.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseLongTermBackupSchedule(
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repeatCadence: (() { final guardedValue = map['repeatCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriodInDays: (() { final guardedValue = map['retentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeOfBackup: (() { final guardedValue = map['timeOfBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
