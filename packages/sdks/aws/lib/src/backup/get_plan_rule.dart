// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule_copy_action.dart';
import 'get_plan_rule_lifecycle.dart';
import 'get_plan_rule_scan_action.dart';

class GetPlanRule {
  /// Amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error.
  final pulumi.Input<int> completionWindow;
  /// Configuration block(s) with copy operation settings. See below.
  final pulumi.Input<List<GetPlanRuleCopyAction>> copyActions;
  /// Whether AWS Backup creates continuous backups.
  final pulumi.Input<bool> enableContinuousBackup;
  /// Lifecycle defining when a recovery point transitions to cold storage and when it expires. See below.
  final pulumi.Input<List<GetPlanRuleLifecycle>> lifecycles;
  /// Metadata that you can assign to help organize the resources that you create.
  final pulumi.Input<Map<String, String>?>? recoveryPointTags;
  /// Display name of a backup rule.
  final pulumi.Input<String> ruleName;
  /// Configuration block(s) with malware scanning settings. See below.
  final pulumi.Input<List<GetPlanRuleScanAction>> scanActions;
  /// CRON expression specifying when AWS Backup initiates a backup job.
  final pulumi.Input<String> schedule;
  /// Timezone in which the schedule expression is set.
  final pulumi.Input<String> scheduleExpressionTimezone;
  /// Amount of time in minutes before beginning a backup.
  final pulumi.Input<int> startWindow;
  /// ARN of the logically air-gapped backup vault where the recovery point is copied.
  final pulumi.Input<String> targetLogicallyAirGappedBackupVaultArn;
  /// Name of a logical container where backups are stored.
  final pulumi.Input<String> targetVaultName;

  /// Creates a new [GetPlanRule].
  /// [completionWindow] Amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error.
  /// [copyActions] Configuration block(s) with copy operation settings. See below.
  /// [enableContinuousBackup] Whether AWS Backup creates continuous backups.
  /// [lifecycles] Lifecycle defining when a recovery point transitions to cold storage and when it expires. See below.
  /// [recoveryPointTags] Metadata that you can assign to help organize the resources that you create.
  /// [ruleName] Display name of a backup rule.
  /// [scanActions] Configuration block(s) with malware scanning settings. See below.
  /// [schedule] CRON expression specifying when AWS Backup initiates a backup job.
  /// [scheduleExpressionTimezone] Timezone in which the schedule expression is set.
  /// [startWindow] Amount of time in minutes before beginning a backup.
  /// [targetLogicallyAirGappedBackupVaultArn] ARN of the logically air-gapped backup vault where the recovery point is copied.
  /// [targetVaultName] Name of a logical container where backups are stored.
  const GetPlanRule({
    required this.completionWindow,
    required this.copyActions,
    required this.enableContinuousBackup,
    required this.lifecycles,
    this.recoveryPointTags,
    required this.ruleName,
    required this.scanActions,
    required this.schedule,
    required this.scheduleExpressionTimezone,
    required this.startWindow,
    required this.targetLogicallyAirGappedBackupVaultArn,
    required this.targetVaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionWindow': completionWindow,
      'copyActions': pulumi.Input.mapInputValue<List<GetPlanRuleCopyAction>, List<Map<String, dynamic>>>(copyActions, (value) => pulumi.Input.encodeList<GetPlanRuleCopyAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableContinuousBackup': enableContinuousBackup,
      'lifecycles': pulumi.Input.mapInputValue<List<GetPlanRuleLifecycle>, List<Map<String, dynamic>>>(lifecycles, (value) => pulumi.Input.encodeList<GetPlanRuleLifecycle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryPointTags': ?recoveryPointTags,
      'ruleName': ruleName,
      'scanActions': pulumi.Input.mapInputValue<List<GetPlanRuleScanAction>, List<Map<String, dynamic>>>(scanActions, (value) => pulumi.Input.encodeList<GetPlanRuleScanAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': schedule,
      'scheduleExpressionTimezone': scheduleExpressionTimezone,
      'startWindow': startWindow,
      'targetLogicallyAirGappedBackupVaultArn': targetLogicallyAirGappedBackupVaultArn,
      'targetVaultName': targetVaultName,
    };
  }

  factory GetPlanRule.fromMap(Map<String, dynamic> map) {
    return GetPlanRule(
      completionWindow: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['completionWindow'])),
      copyActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleCopyAction>(map['copyActions']!, (value) => GetPlanRuleCopyAction.fromMap((value as Map).cast<String, dynamic>()))),
      enableContinuousBackup: pulumi.Input.fromValue(map['enableContinuousBackup'] as bool),
      lifecycles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleLifecycle>(map['lifecycles']!, (value) => GetPlanRuleLifecycle.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryPointTags: (() { final guardedValue = map['recoveryPointTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scanActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleScanAction>(map['scanActions']!, (value) => GetPlanRuleScanAction.fromMap((value as Map).cast<String, dynamic>()))),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      scheduleExpressionTimezone: pulumi.Input.fromValue(map['scheduleExpressionTimezone'] as String),
      startWindow: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['startWindow'])),
      targetLogicallyAirGappedBackupVaultArn: pulumi.Input.fromValue(map['targetLogicallyAirGappedBackupVaultArn'] as String),
      targetVaultName: pulumi.Input.fromValue(map['targetVaultName'] as String),
    );
  }
}
