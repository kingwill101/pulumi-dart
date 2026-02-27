// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backup_plan_backup_rule_standard_schedule/get_backup_plan_backup_rule_standard_schedule.dart';

class GetBackupPlanBackupRule {
  /// Configures the duration for which backup data will be kept. The value should be greater than or equal to minimum enforced retention of the backup vault.
  final int backupRetentionDays;

  /// The unique ID of this 'BackupRule'. The 'rule_id' is unique per 'BackupPlan'.
  final String ruleId;

  /// StandardSchedule defines a schedule that runs within the confines of a defined window of days.
  final List<GetBackupPlanBackupRuleStandardSchedule> standardSchedules;

  GetBackupPlanBackupRule({
    required this.backupRetentionDays,
    required this.ruleId,
    required this.standardSchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupRetentionDays'] = backupRetentionDays;
    map['ruleId'] = ruleId;
    map['standardSchedules'] = pulumi.Input.encodeList<
        GetBackupPlanBackupRuleStandardSchedule,
        Map<String, dynamic>>(standardSchedules, (value) => value.toMap());
    return map;
  }

  factory GetBackupPlanBackupRule.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanBackupRule(
      backupRetentionDays: map['backupRetentionDays'] as int,
      ruleId: map['ruleId'] as String,
      standardSchedules:
          pulumi.Input.decodeList<GetBackupPlanBackupRuleStandardSchedule>(
              map['standardSchedules'],
              (value) => GetBackupPlanBackupRuleStandardSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
