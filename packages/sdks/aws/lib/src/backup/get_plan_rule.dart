// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule_copy_action.dart';
import 'get_plan_rule_lifecycle.dart';
import 'get_plan_rule_scan_action.dart';

class GetPlanRule {
  final pulumi.Input<int> completionWindow;
  final pulumi.Input<List<GetPlanRuleCopyAction>> copyActions;
  final pulumi.Input<bool> enableContinuousBackup;
  final pulumi.Input<List<GetPlanRuleLifecycle>> lifecycles;
  final pulumi.Input<Map<String, String>>? recoveryPointTags;
  final pulumi.Input<String> ruleName;
  final pulumi.Input<List<GetPlanRuleScanAction>> scanActions;
  final pulumi.Input<String> schedule;
  final pulumi.Input<String> scheduleExpressionTimezone;
  final pulumi.Input<int> startWindow;
  final pulumi.Input<String> targetLogicallyAirGappedBackupVaultArn;
  final pulumi.Input<String> targetVaultName;

  /// Creates a new [GetPlanRule].
  /// [completionWindow] Required.
  /// [copyActions] Required.
  /// [enableContinuousBackup] Required.
  /// [lifecycles] Required.
  /// [recoveryPointTags] Optional.
  /// [ruleName] Required.
  /// [scanActions] Required.
  /// [schedule] Required.
  /// [scheduleExpressionTimezone] Required.
  /// [startWindow] Required.
  /// [targetLogicallyAirGappedBackupVaultArn] Required.
  /// [targetVaultName] Required.
  GetPlanRule({
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
      completionWindow: pulumi.Input.fromValue(map['completionWindow'] as int),
      copyActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleCopyAction>(map['copyActions']!, (value) => GetPlanRuleCopyAction.fromMap((value as Map).cast<String, dynamic>()))),
      enableContinuousBackup: pulumi.Input.fromValue(map['enableContinuousBackup'] as bool),
      lifecycles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleLifecycle>(map['lifecycles']!, (value) => GetPlanRuleLifecycle.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryPointTags: (() { final guardedValue = map['recoveryPointTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scanActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleScanAction>(map['scanActions']!, (value) => GetPlanRuleScanAction.fromMap((value as Map).cast<String, dynamic>()))),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      scheduleExpressionTimezone: pulumi.Input.fromValue(map['scheduleExpressionTimezone'] as String),
      startWindow: pulumi.Input.fromValue(map['startWindow'] as int),
      targetLogicallyAirGappedBackupVaultArn: pulumi.Input.fromValue(map['targetLogicallyAirGappedBackupVaultArn'] as String),
      targetVaultName: pulumi.Input.fromValue(map['targetVaultName'] as String),
    );
  }
}

