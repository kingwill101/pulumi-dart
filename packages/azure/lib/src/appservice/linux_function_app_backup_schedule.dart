// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppBackupSchedule {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  ///
  /// > **Note:** Not all intervals are supported on all Linux Function App SKUs. Please refer to the official documentation for appropriate values.
  final int frequencyInterval;
  /// The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`.
  final String frequencyUnit;
  /// Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  final bool? keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final String? lastExecutionTime;
  /// After how many days backups should be deleted. Defaults to `30`.
  final int? retentionPeriodDays;
  /// When the schedule should start working in RFC-3339 format.
  final String? startTime;

  /// Creates a new [LinuxFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  /// [frequencyUnit] The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`.
  /// [keepAtLeastOneBackup] Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups should be deleted. Defaults to `30`.
  /// [startTime] When the schedule should start working in RFC-3339 format.
  LinuxFunctionAppBackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.lastExecutionTime,
    this.retentionPeriodDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': ?keepAtLeastOneBackup,
      'lastExecutionTime': ?lastExecutionTime,
      'retentionPeriodDays': ?retentionPeriodDays,
      'startTime': ?startTime,
    };
  }

  factory LinuxFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppBackupSchedule(
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] == null ? null : map['keepAtLeastOneBackup'] as bool,
      lastExecutionTime: map['lastExecutionTime'] == null ? null : map['lastExecutionTime'] as String,
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : map['retentionPeriodDays'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

