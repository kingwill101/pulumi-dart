// ignore_for_file: unused_element, unnecessary_cast


/// Description of a backup schedule. Describes how often should be the backup performed and what should be the retention policy.
class BackupScheduleResponse {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  final int frequencyInterval;
  /// The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  final String frequencyUnit;
  /// True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  final bool keepAtLeastOneBackup;
  /// Last time when this schedule was triggered.
  final String lastExecutionTime;
  /// After how many days backups should be deleted.
  final int retentionPeriodInDays;
  /// When the schedule should start working.
  final String? startTime;

  /// Creates a new [BackupScheduleResponse].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to 7 and FrequencyUnit should be set to Day)
  /// [frequencyUnit] The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
  /// [keepAtLeastOneBackup] True if the retention policy should always keep at least one backup in the storage account, regardless how old it is; false otherwise.
  /// [lastExecutionTime] Last time when this schedule was triggered.
  /// [retentionPeriodInDays] After how many days backups should be deleted.
  /// [startTime] When the schedule should start working.
  BackupScheduleResponse({
    required this.frequencyInterval,
    required this.frequencyUnit,
    required this.keepAtLeastOneBackup,
    required this.lastExecutionTime,
    required this.retentionPeriodInDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': keepAtLeastOneBackup,
      'lastExecutionTime': lastExecutionTime,
      'retentionPeriodInDays': retentionPeriodInDays,
      'startTime': ?startTime,
    };
  }

  factory BackupScheduleResponse.fromMap(Map<String, dynamic> map) {
    return BackupScheduleResponse(
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] as bool,
      lastExecutionTime: map['lastExecutionTime'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

