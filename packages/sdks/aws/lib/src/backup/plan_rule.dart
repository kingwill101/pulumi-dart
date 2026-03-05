// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_rule_copy_action.dart';
import 'plan_rule_lifecycle.dart';
import 'plan_rule_scan_action.dart';

class PlanRule {
  /// The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error.
  final pulumi.Input<int>? completionWindow;
  /// Configuration block(s) with copy operation settings. Detailed below.
  final pulumi.Input<List<PlanRuleCopyAction>>? copyActions;
  /// Enable continuous backups for supported resources.
  final pulumi.Input<bool>? enableContinuousBackup;
  /// The lifecycle defines when a protected resource is transitioned to cold storage and when it expires.  Fields documented below.
  final pulumi.Input<PlanRuleLifecycle>? lifecycle;
  /// Metadata that you can assign to help organize the resources that you create.
  final pulumi.Input<Map<String, String>>? recoveryPointTags;
  /// An display name for a backup rule.
  final pulumi.Input<String> ruleName;
  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental.
  final pulumi.Input<List<PlanRuleScanAction>>? scanActions;
  /// A CRON expression specifying when AWS Backup initiates a backup job.
  final pulumi.Input<String>? schedule;
  /// The timezone in which the schedule expression is set. Default value: `"Etc/UTC"`.
  final pulumi.Input<String>? scheduleExpressionTimezone;
  /// The amount of time in minutes before beginning a backup.
  final pulumi.Input<int>? startWindow;
  /// The ARN of a logically air-gapped vault. ARN must be in the same account and region. If provided, supported fully managed resources back up directly to logically air-gapped vault, while other supported resources create a temporary (billable) snapshot in backup vault, then copy it to logically air-gapped vault. Unsupported resources only back up to the specified backup vault.
  final pulumi.Input<String>? targetLogicallyAirGappedBackupVaultArn;
  /// The name of a logical container where backups are stored.
  final pulumi.Input<String> targetVaultName;

  /// Creates a new [PlanRule].
  /// [completionWindow] The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error.
  /// [copyActions] Configuration block(s) with copy operation settings. Detailed below.
  /// [enableContinuousBackup] Enable continuous backups for supported resources.
  /// [lifecycle] The lifecycle defines when a protected resource is transitioned to cold storage and when it expires.  Fields documented below.
  /// [recoveryPointTags] Metadata that you can assign to help organize the resources that you create.
  /// [ruleName] An display name for a backup rule.
  /// [scanActions] Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental.
  /// [schedule] A CRON expression specifying when AWS Backup initiates a backup job.
  /// [scheduleExpressionTimezone] The timezone in which the schedule expression is set. Default value: `"Etc/UTC"`.
  /// [startWindow] The amount of time in minutes before beginning a backup.
  /// [targetLogicallyAirGappedBackupVaultArn] The ARN of a logically air-gapped vault. ARN must be in the same account and region. If provided, supported fully managed resources back up directly to logically air-gapped vault, while other supported resources create a temporary (billable) snapshot in backup vault, then copy it to logically air-gapped vault. Unsupported resources only back up to the specified backup vault.
  /// [targetVaultName] The name of a logical container where backups are stored.
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
    return <String, dynamic>{
      'completionWindow': ?completionWindow,
      'copyActions': ?pulumi.Input.mapOptionalInputValue<List<PlanRuleCopyAction>, List<Map<String, dynamic>>>(copyActions, (value) => pulumi.Input.encodeList<PlanRuleCopyAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableContinuousBackup': ?enableContinuousBackup,
      'lifecycle': ?pulumi.Input.mapOptionalInputValue<PlanRuleLifecycle, Map<String, dynamic>>(lifecycle, (value) => value.toMap()),
      'recoveryPointTags': ?recoveryPointTags,
      'ruleName': ruleName,
      'scanActions': ?pulumi.Input.mapOptionalInputValue<List<PlanRuleScanAction>, List<Map<String, dynamic>>>(scanActions, (value) => pulumi.Input.encodeList<PlanRuleScanAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?schedule,
      'scheduleExpressionTimezone': ?scheduleExpressionTimezone,
      'startWindow': ?startWindow,
      'targetLogicallyAirGappedBackupVaultArn': ?targetLogicallyAirGappedBackupVaultArn,
      'targetVaultName': targetVaultName,
    };
  }

  factory PlanRule.fromMap(Map<String, dynamic> map) {
    return PlanRule(
      completionWindow: (() { final guardedValue = map['completionWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      copyActions: (() { final guardedValue = map['copyActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanRuleCopyAction>(guardedValue, (value) => PlanRuleCopyAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableContinuousBackup: (() { final guardedValue = map['enableContinuousBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lifecycle: (() { final guardedValue = map['lifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanRuleLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryPointTags: (() { final guardedValue = map['recoveryPointTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scanActions: (() { final guardedValue = map['scanActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanRuleScanAction>(guardedValue, (value) => PlanRuleScanAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpressionTimezone: (() { final guardedValue = map['scheduleExpressionTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startWindow: (() { final guardedValue = map['startWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetLogicallyAirGappedBackupVaultArn: (() { final guardedValue = map['targetLogicallyAirGappedBackupVaultArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVaultName: pulumi.Input.fromValue(map['targetVaultName'] as String),
    );
  }
}

