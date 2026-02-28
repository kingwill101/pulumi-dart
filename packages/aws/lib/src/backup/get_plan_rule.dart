// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule_copy_action.dart';
import 'get_plan_rule_lifecycle.dart';
import 'get_plan_rule_scan_action.dart';

class GetPlanRule {
  final int completionWindow;
  final List<GetPlanRuleCopyAction> copyActions;
  final bool enableContinuousBackup;
  final List<GetPlanRuleLifecycle> lifecycles;
  final Map<String, String>? recoveryPointTags;
  final String ruleName;
  final List<GetPlanRuleScanAction> scanActions;
  final String schedule;
  final String scheduleExpressionTimezone;
  final int startWindow;
  final String targetLogicallyAirGappedBackupVaultArn;
  final String targetVaultName;

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
    final map = <String, dynamic>{};
    map['completionWindow'] = completionWindow;
    map['copyActions'] =
        pulumi.Input.encodeList<GetPlanRuleCopyAction, Map<String, dynamic>>(
            copyActions, (value) => value.toMap());
    map['enableContinuousBackup'] = enableContinuousBackup;
    map['lifecycles'] =
        pulumi.Input.encodeList<GetPlanRuleLifecycle, Map<String, dynamic>>(
            lifecycles, (value) => value.toMap());
    final recoveryPointTagsValue = recoveryPointTags;
    if (recoveryPointTagsValue != null) {
      map['recoveryPointTags'] = recoveryPointTagsValue;
    }
    map['ruleName'] = ruleName;
    map['scanActions'] =
        pulumi.Input.encodeList<GetPlanRuleScanAction, Map<String, dynamic>>(
            scanActions, (value) => value.toMap());
    map['schedule'] = schedule;
    map['scheduleExpressionTimezone'] = scheduleExpressionTimezone;
    map['startWindow'] = startWindow;
    map['targetLogicallyAirGappedBackupVaultArn'] =
        targetLogicallyAirGappedBackupVaultArn;
    map['targetVaultName'] = targetVaultName;
    return map;
  }

  factory GetPlanRule.fromMap(Map<String, dynamic> map) {
    return GetPlanRule(
      completionWindow: map['completionWindow'] as int,
      copyActions: pulumi.Input.decodeList<GetPlanRuleCopyAction>(
          map['copyActions'],
          (value) => GetPlanRuleCopyAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      enableContinuousBackup: map['enableContinuousBackup'] as bool,
      lifecycles: pulumi.Input.decodeList<GetPlanRuleLifecycle>(
          map['lifecycles'],
          (value) => GetPlanRuleLifecycle.fromMap(
              (value as Map).cast<String, dynamic>())),
      recoveryPointTags: map['recoveryPointTags'] == null
          ? null
          : (map['recoveryPointTags'] as Map).cast<String, String>(),
      ruleName: map['ruleName'] as String,
      scanActions: pulumi.Input.decodeList<GetPlanRuleScanAction>(
          map['scanActions'],
          (value) => GetPlanRuleScanAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      schedule: map['schedule'] as String,
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] as String,
      startWindow: map['startWindow'] as int,
      targetLogicallyAirGappedBackupVaultArn:
          map['targetLogicallyAirGappedBackupVaultArn'] as String,
      targetVaultName: map['targetVaultName'] as String,
    );
  }
}
