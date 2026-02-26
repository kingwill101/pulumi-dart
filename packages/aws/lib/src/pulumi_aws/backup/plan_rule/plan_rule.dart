// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_rule_copy_action/plan_rule_copy_action.dart';
import '../plan_rule_lifecycle/plan_rule_lifecycle.dart';
import '../plan_rule_scan_action/plan_rule_scan_action.dart';

class PlanRule {
  /// The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error.
  final int? completionWindow;

  /// Configuration block(s) with copy operation settings. Detailed below.
  final List<PlanRuleCopyAction>? copyActions;

  /// Enable continuous backups for supported resources.
  final bool? enableContinuousBackup;

  /// The lifecycle defines when a protected resource is transitioned to cold storage and when it expires.  Fields documented below.
  final PlanRuleLifecycle? lifecycle;

  /// Metadata that you can assign to help organize the resources that you create.
  final Map<String, String>? recoveryPointTags;

  /// An display name for a backup rule.
  final String ruleName;

  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental.
  final List<PlanRuleScanAction>? scanActions;

  /// A CRON expression specifying when AWS Backup initiates a backup job.
  final String? schedule;

  /// The timezone in which the schedule expression is set. Default value: `"Etc/UTC"`.
  final String? scheduleExpressionTimezone;

  /// The amount of time in minutes before beginning a backup.
  final int? startWindow;

  /// The ARN of a logically air-gapped vault. ARN must be in the same account and region. If provided, supported fully managed resources back up directly to logically air-gapped vault, while other supported resources create a temporary (billable) snapshot in backup vault, then copy it to logically air-gapped vault. Unsupported resources only back up to the specified backup vault.
  final String? targetLogicallyAirGappedBackupVaultArn;

  /// The name of a logical container where backups are stored.
  final String targetVaultName;

  PlanRule({
    this.completionWindow,
    this.copyActions,
    this.enableContinuousBackup,
    this.lifecycle,
    this.recoveryPointTags,
    required this.ruleName,
    this.scanActions,
    this.schedule,
    this.scheduleExpressionTimezone,
    this.startWindow,
    this.targetLogicallyAirGappedBackupVaultArn,
    required this.targetVaultName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final completionWindowValue = completionWindow;
    if (completionWindowValue != null) {
      map['completionWindow'] = completionWindowValue;
    }
    final copyActionsValue = copyActions;
    if (copyActionsValue != null) {
      map['copyActions'] =
          Input.encodeList<PlanRuleCopyAction, Map<String, dynamic>>(
              copyActionsValue, (value) => value.toMap());
    }
    final enableContinuousBackupValue = enableContinuousBackup;
    if (enableContinuousBackupValue != null) {
      map['enableContinuousBackup'] = enableContinuousBackupValue;
    }
    final lifecycleValue = lifecycle;
    if (lifecycleValue != null) {
      map['lifecycle'] = lifecycleValue.toMap();
    }
    final recoveryPointTagsValue = recoveryPointTags;
    if (recoveryPointTagsValue != null) {
      map['recoveryPointTags'] = recoveryPointTagsValue;
    }
    map['ruleName'] = ruleName;
    final scanActionsValue = scanActions;
    if (scanActionsValue != null) {
      map['scanActions'] =
          Input.encodeList<PlanRuleScanAction, Map<String, dynamic>>(
              scanActionsValue, (value) => value.toMap());
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final scheduleExpressionTimezoneValue = scheduleExpressionTimezone;
    if (scheduleExpressionTimezoneValue != null) {
      map['scheduleExpressionTimezone'] = scheduleExpressionTimezoneValue;
    }
    final startWindowValue = startWindow;
    if (startWindowValue != null) {
      map['startWindow'] = startWindowValue;
    }
    final targetLogicallyAirGappedBackupVaultArnValue =
        targetLogicallyAirGappedBackupVaultArn;
    if (targetLogicallyAirGappedBackupVaultArnValue != null) {
      map['targetLogicallyAirGappedBackupVaultArn'] =
          targetLogicallyAirGappedBackupVaultArnValue;
    }
    map['targetVaultName'] = targetVaultName;
    return map;
  }

  factory PlanRule.fromMap(Map<String, dynamic> map) {
    return PlanRule(
      completionWindow: map['completionWindow'] == null
          ? null
          : map['completionWindow'] as int,
      copyActions: map['copyActions'] == null
          ? null
          : Input.decodeList<PlanRuleCopyAction>(
              map['copyActions'],
              (value) => PlanRuleCopyAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableContinuousBackup: map['enableContinuousBackup'] == null
          ? null
          : map['enableContinuousBackup'] as bool,
      lifecycle: map['lifecycle'] == null
          ? null
          : PlanRuleLifecycle.fromMap(
              (map['lifecycle'] as Map).cast<String, dynamic>()),
      recoveryPointTags: map['recoveryPointTags'] == null
          ? null
          : (map['recoveryPointTags'] as Map).cast<String, String>(),
      ruleName: map['ruleName'] as String,
      scanActions: map['scanActions'] == null
          ? null
          : Input.decodeList<PlanRuleScanAction>(
              map['scanActions'],
              (value) => PlanRuleScanAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] == null
          ? null
          : map['scheduleExpressionTimezone'] as String,
      startWindow:
          map['startWindow'] == null ? null : map['startWindow'] as int,
      targetLogicallyAirGappedBackupVaultArn:
          map['targetLogicallyAirGappedBackupVaultArn'] == null
              ? null
              : map['targetLogicallyAirGappedBackupVaultArn'] as String,
      targetVaultName: map['targetVaultName'] as String,
    );
  }
}
