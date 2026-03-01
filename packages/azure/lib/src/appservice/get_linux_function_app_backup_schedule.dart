// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppBackupSchedule {
  /// How often the backup is executed.
  final int frequencyInterval;
  /// The unit of time for how often the backup takes place.
  final String frequencyUnit;
  /// Does the service keep at least one backup, regardless of age of backup?
  final bool keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final String lastExecutionTime;
  /// After how many days backups are deleted.
  final int retentionPeriodDays;
  /// When the schedule starts working in RFC-3339 format.
  final String startTime;

  /// Creates a new [GetLinuxFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup is executed.
  /// [frequencyUnit] The unit of time for how often the backup takes place.
  /// [keepAtLeastOneBackup] Does the service keep at least one backup, regardless of age of backup?
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups are deleted.
  /// [startTime] When the schedule starts working in RFC-3339 format.
  GetLinuxFunctionAppBackupSchedule({
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

  factory GetLinuxFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppBackupSchedule(
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] as bool,
      lastExecutionTime: map['lastExecutionTime'] as String,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
      startTime: map['startTime'] as String,
    );
  }
}

