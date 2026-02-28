// ignore_for_file: unused_element, unnecessary_cast

import 'backup_plan_backup_schedule_rpo_config.dart';

class BackupPlanBackupSchedule {
  /// A standard cron string that defines a repeating schedule for
  /// creating Backups via this BackupPlan.
  /// This is mutually exclusive with the rpoConfig field since at most one
  /// schedule can be defined for a BackupPlan.
  /// If this is defined, then backupRetainDays must also be defined.
  final String? cronSchedule;

  /// This flag denotes whether automatic Backup creation is paused for this BackupPlan.
  final bool? paused;

  /// Defines the RPO schedule configuration for this BackupPlan. This is mutually
  /// exclusive with the cronSchedule field since at most one schedule can be defined
  /// for a BackupPLan. If this is defined, then backupRetainDays must also be defined.
  /// Structure is documented below.
  final BackupPlanBackupScheduleRpoConfig? rpoConfig;

  /// Creates a new [BackupPlanBackupSchedule].
  /// [cronSchedule] A standard cron string that defines a repeating schedule for
  /// [paused] This flag denotes whether automatic Backup creation is paused for this BackupPlan.
  /// [rpoConfig] Defines the RPO schedule configuration for this BackupPlan. This is mutually
  BackupPlanBackupSchedule({
    this.cronSchedule,
    this.paused,
    this.rpoConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    final pausedValue = paused;
    if (pausedValue != null) {
      map['paused'] = pausedValue;
    }
    final rpoConfigValue = rpoConfig;
    if (rpoConfigValue != null) {
      map['rpoConfig'] = rpoConfigValue.toMap();
    }
    return map;
  }

  factory BackupPlanBackupSchedule.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupSchedule(
      cronSchedule:
          map['cronSchedule'] == null ? null : map['cronSchedule'] as String,
      paused: map['paused'] == null ? null : map['paused'] as bool,
      rpoConfig: map['rpoConfig'] == null
          ? null
          : BackupPlanBackupScheduleRpoConfig.fromMap(
              (map['rpoConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
