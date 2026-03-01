// ignore_for_file: unused_element, unnecessary_cast

/// Defines scheduling parameters for automatically creating Backups via this BackupPlan.
class Schedule {
  /// Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating schedule for creating Backups via this BackupPlan. This is mutually exclusive with the rpo_config field since at most one schedule can be defined for a BackupPlan. If this is defined, then backup_retain_days must also be defined. Default (empty): no automatic backup creation will occur.
  final String? cronSchedule;

  /// Optional. This flag denotes whether automatic Backup creation is paused for this BackupPlan. Default: False
  final bool? paused;

  /// Creates a new [Schedule].
  /// [cronSchedule] Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating schedule for creating Backups via this BackupPlan. This is mutually exclusive with the rpo_config field since at most one schedule can be defined for a BackupPlan. If this is defined, then backup_retain_days must also be defined. Default (empty): no automatic backup creation will occur.
  /// [paused] Optional. This flag denotes whether automatic Backup creation is paused for this BackupPlan. Default: False
  Schedule({this.cronSchedule, this.paused});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cronSchedule': ?cronSchedule, 'paused': ?paused};
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      cronSchedule: map['cronSchedule'] == null
          ? null
          : map['cronSchedule'] as String,
      paused: map['paused'] == null ? null : map['paused'] as bool,
    );
  }
}
