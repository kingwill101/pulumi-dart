// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppBackupSchedule {
  /// How often the backup is executed.
  final int frequencyInterval;
  /// The unit of time the backup should take place.
  final String frequencyUnit;
  /// Should the service keep at least one backup.
  final bool keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final String lastExecutionTime;
  /// After how many days backups is deleted.
  final int retentionPeriodDays;
  /// When the schedule should start working in RFC-3339 format.
  final String startTime;

  /// Creates a new [GetWindowsFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup is executed.
  /// [frequencyUnit] The unit of time the backup should take place.
  /// [keepAtLeastOneBackup] Should the service keep at least one backup.
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups is deleted.
  /// [startTime] When the schedule should start working in RFC-3339 format.
  GetWindowsFunctionAppBackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    required this.keepAtLeastOneBackup,
    required this.lastExecutionTime,
    required this.retentionPeriodDays,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': keepAtLeastOneBackup,
      'lastExecutionTime': lastExecutionTime,
      'retentionPeriodDays': retentionPeriodDays,
      'startTime': startTime,
    };
  }

  factory GetWindowsFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppBackupSchedule(
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] as bool,
      lastExecutionTime: map['lastExecutionTime'] as String,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
      startTime: map['startTime'] as String,
    );
  }
}

