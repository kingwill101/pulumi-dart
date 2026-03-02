// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_group_rule.dart';
import 'dispatch_rule_label_match_expression_grid.dart';
import 'dispatch_rule_notify_rule.dart';
import 'dispatch_rule_notify_template.dart';

/// Input properties used for looking up and filtering DispatchRule resources.
class DispatchRuleState {
  /// The name of the dispatch policy.
  final pulumi.Input<String>? dispatchRuleName;
  /// The alert handling method. Valid values: CREATE_ALERT: generates an alert. DISCARD_ALERT: discards the alert event and generates no alert.
  final pulumi.Input<String>? dispatchType;
  /// Sets the event group. See `group_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  final pulumi.Input<List<DispatchRuleGroupRule>>? groupRules;
  /// Specifies whether to send the restored alert. Valid values: true: sends the alert. false: does not send the alert.
  final pulumi.Input<bool>? isRecover;
  /// Sets the dispatch rule. See `label_match_expression_grid` below.
  final pulumi.Input<List<DispatchRuleLabelMatchExpressionGrid>>? labelMatchExpressionGrids;
  /// Sets the notification rule. See `notify_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  final pulumi.Input<List<DispatchRuleNotifyRule>>? notifyRules;
  /// Sets the notification template. See `notify_template` below.
  final pulumi.Input<List<DispatchRuleNotifyTemplate>>? notifyTemplates;
  /// The resource status of Alert Dispatch Rule.
  final pulumi.Input<String>? status;

  /// Creates a new [DispatchRuleState].
  /// [dispatchRuleName] The name of the dispatch policy.
  /// [dispatchType] The alert handling method. Valid values: CREATE_ALERT: generates an alert. DISCARD_ALERT: discards the alert event and generates no alert.
  /// [groupRules] Sets the event group. See `group_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  /// [isRecover] Specifies whether to send the restored alert. Valid values: true: sends the alert. false: does not send the alert.
  /// [labelMatchExpressionGrids] Sets the dispatch rule. See `label_match_expression_grid` below.
  /// [notifyRules] Sets the notification rule. See `notify_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  /// [notifyTemplates] Sets the notification template. See `notify_template` below.
  /// [status] The resource status of Alert Dispatch Rule.
  DispatchRuleState({
    this.dispatchRuleName,
    this.dispatchType,
    this.groupRules,
    this.isRecover,
    this.labelMatchExpressionGrids,
    this.notifyRules,
    this.notifyTemplates,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRuleName': ?dispatchRuleName,
      'dispatchType': ?dispatchType,
      'groupRules': ?pulumi.Input.mapOptionalInputValue<List<DispatchRuleGroupRule>, List<Map<String, dynamic>>>(groupRules, (value) => pulumi.Input.encodeList<DispatchRuleGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isRecover': ?isRecover,
      'labelMatchExpressionGrids': ?pulumi.Input.mapOptionalInputValue<List<DispatchRuleLabelMatchExpressionGrid>, List<Map<String, dynamic>>>(labelMatchExpressionGrids, (value) => pulumi.Input.encodeList<DispatchRuleLabelMatchExpressionGrid, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyRules': ?pulumi.Input.mapOptionalInputValue<List<DispatchRuleNotifyRule>, List<Map<String, dynamic>>>(notifyRules, (value) => pulumi.Input.encodeList<DispatchRuleNotifyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyTemplates': ?pulumi.Input.mapOptionalInputValue<List<DispatchRuleNotifyTemplate>, List<Map<String, dynamic>>>(notifyTemplates, (value) => pulumi.Input.encodeList<DispatchRuleNotifyTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory DispatchRuleState.fromMap(Map<String, dynamic> map) {
    return DispatchRuleState(
      dispatchRuleName: map['dispatchRuleName'] == null ? null : (map['dispatchRuleName']! as String).input(),
      dispatchType: map['dispatchType'] == null ? null : (map['dispatchType']! as String).input(),
      groupRules: map['groupRules'] == null ? null : (pulumi.Input.decodeList<DispatchRuleGroupRule>(map['groupRules']!, (value) => DispatchRuleGroupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isRecover: map['isRecover'] == null ? null : (map['isRecover']! as bool).input(),
      labelMatchExpressionGrids: map['labelMatchExpressionGrids'] == null ? null : (pulumi.Input.decodeList<DispatchRuleLabelMatchExpressionGrid>(map['labelMatchExpressionGrids']!, (value) => DispatchRuleLabelMatchExpressionGrid.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notifyRules: map['notifyRules'] == null ? null : (pulumi.Input.decodeList<DispatchRuleNotifyRule>(map['notifyRules']!, (value) => DispatchRuleNotifyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notifyTemplates: map['notifyTemplates'] == null ? null : (pulumi.Input.decodeList<DispatchRuleNotifyTemplate>(map['notifyTemplates']!, (value) => DispatchRuleNotifyTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

