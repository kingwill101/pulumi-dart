// ignore_for_file: unused_element, unnecessary_cast

import 'backup_plan_backup_rule_standard_schedule.dart';

class BackupPlanBackupRule {
  /// Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  final int backupRetentionDays;

  /// The unique ID of this `BackupRule`. The `rule_id` is unique per `BackupPlan`.
  final String ruleId;

  /// StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  /// Structure is documented below.
  final BackupPlanBackupRuleStandardSchedule standardSchedule;

  /// Creates a new [BackupPlanBackupRule].
  /// [backupRetentionDays] Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  /// [ruleId] The unique ID of this `BackupRule`. The `rule_id` is unique per `BackupPlan`.
  /// [standardSchedule] StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  BackupPlanBackupRule({
    required this.backupRetentionDays,
    required this.ruleId,
    required this.standardSchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupRetentionDays'] = backupRetentionDays;
    map['ruleId'] = ruleId;
    map['standardSchedule'] = standardSchedule.toMap();
    return map;
  }

  factory BackupPlanBackupRule.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupRule(
      backupRetentionDays: map['backupRetentionDays'] as int,
      ruleId: map['ruleId'] as String,
      standardSchedule: BackupPlanBackupRuleStandardSchedule.fromMap(
          (map['standardSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
