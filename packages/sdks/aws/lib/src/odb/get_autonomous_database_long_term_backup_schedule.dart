// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseLongTermBackupSchedule {
  /// Whether the resource pool is disabled.
  final pulumi.Input<bool> isDisabled;
  /// Backup cadence.
  final pulumi.Input<String> repeatCadence;
  /// Backup retention period in days.
  final pulumi.Input<int> retentionPeriodInDays;
  /// Backup date and time.
  final pulumi.Input<String> timeOfBackup;

  /// Creates a new [GetAutonomousDatabaseLongTermBackupSchedule].
  /// [isDisabled] Whether the resource pool is disabled.
  /// [repeatCadence] Backup cadence.
  /// [retentionPeriodInDays] Backup retention period in days.
  /// [timeOfBackup] Backup date and time.
  const GetAutonomousDatabaseLongTermBackupSchedule({
    required this.isDisabled,
    required this.repeatCadence,
    required this.retentionPeriodInDays,
    required this.timeOfBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDisabled': isDisabled,
      'repeatCadence': repeatCadence,
      'retentionPeriodInDays': retentionPeriodInDays,
      'timeOfBackup': timeOfBackup,
    };
  }

  factory GetAutonomousDatabaseLongTermBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseLongTermBackupSchedule(
      isDisabled: pulumi.Input.fromValue(map['isDisabled'] as bool),
      repeatCadence: pulumi.Input.fromValue(map['repeatCadence'] as String),
      retentionPeriodInDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionPeriodInDays'])),
      timeOfBackup: pulumi.Input.fromValue(map['timeOfBackup'] as String),
    );
  }
}
