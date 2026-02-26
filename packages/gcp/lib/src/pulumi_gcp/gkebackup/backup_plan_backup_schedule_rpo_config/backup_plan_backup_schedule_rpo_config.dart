// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_plan_backup_schedule_rpo_config_exclusion_window/backup_plan_backup_schedule_rpo_config_exclusion_window.dart';

class BackupPlanBackupScheduleRpoConfig {
  /// User specified time windows during which backup can NOT happen for this BackupPlan.
  /// Backups should start and finish outside of any given exclusion window. Note: backup
  /// jobs will be scheduled to start and finish outside the duration of the window as
  /// much as possible, but running jobs will not get canceled when it runs into the window.
  /// All the time and date values in exclusionWindows entry in the API are in UTC. We
  /// only allow <=1 recurrence (daily or weekly) exclusion window for a BackupPlan while no
  /// restriction on number of single occurrence windows.
  /// Structure is documented below.
  final List<BackupPlanBackupScheduleRpoConfigExclusionWindow>?
      exclusionWindows;

  /// Defines the target RPO for the BackupPlan in minutes, which means the target
  /// maximum data loss in time that is acceptable for this BackupPlan. This must be
  /// at least 60, i.e., 1 hour, and at most 86400, i.e., 60 days.
  final int targetRpoMinutes;

  BackupPlanBackupScheduleRpoConfig({
    this.exclusionWindows,
    required this.targetRpoMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionWindowsValue = exclusionWindows;
    if (exclusionWindowsValue != null) {
      map['exclusionWindows'] = Input.encodeList<
              BackupPlanBackupScheduleRpoConfigExclusionWindow,
              Map<String, dynamic>>(
          exclusionWindowsValue, (value) => value.toMap());
    }
    map['targetRpoMinutes'] = targetRpoMinutes;
    return map;
  }

  factory BackupPlanBackupScheduleRpoConfig.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfig(
      exclusionWindows: map['exclusionWindows'] == null
          ? null
          : Input.decodeList<BackupPlanBackupScheduleRpoConfigExclusionWindow>(
              map['exclusionWindows'],
              (value) =>
                  BackupPlanBackupScheduleRpoConfigExclusionWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      targetRpoMinutes: map['targetRpoMinutes'] as int,
    );
  }
}
