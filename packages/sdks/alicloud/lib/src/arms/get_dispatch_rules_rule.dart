// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dispatch_rules_rule_group_rule.dart';
import 'get_dispatch_rules_rule_label_match_expression_grid.dart';
import 'get_dispatch_rules_rule_notify_rule.dart';
import 'get_dispatch_rules_rule_notify_template.dart';

class GetDispatchRulesRule {
  /// Dispatch rule ID.
  final pulumi.Input<String> dispatchRuleId;
  /// The name of the dispatch rule.
  final pulumi.Input<String> dispatchRuleName;
  /// Sets the event group.
  final pulumi.Input<List<GetDispatchRulesRuleGroupRule>> groupRules;
  /// The ID of the Dispatch Rule.
  final pulumi.Input<String> id;
  /// Sets the dispatch rule.
  final pulumi.Input<List<GetDispatchRulesRuleLabelMatchExpressionGrid>> labelMatchExpressionGrids;
  /// Sets the notification rule.
  final pulumi.Input<List<GetDispatchRulesRuleNotifyRule>> notifyRules;
  /// (Available since v1.238.0) The notification method.
  final pulumi.Input<List<GetDispatchRulesRuleNotifyTemplate>> notifyTemplates;
  /// The resource status of Alert Dispatch Rule.
  final pulumi.Input<String> status;

  /// Creates a new [GetDispatchRulesRule].
  /// [dispatchRuleId] Dispatch rule ID.
  /// [dispatchRuleName] The name of the dispatch rule.
  /// [groupRules] Sets the event group.
  /// [id] The ID of the Dispatch Rule.
  /// [labelMatchExpressionGrids] Sets the dispatch rule.
  /// [notifyRules] Sets the notification rule.
  /// [notifyTemplates] (Available since v1.238.0) The notification method.
  /// [status] The resource status of Alert Dispatch Rule.
  const GetDispatchRulesRule({
    required this.dispatchRuleId,
    required this.dispatchRuleName,
    required this.groupRules,
    required this.id,
    required this.labelMatchExpressionGrids,
    required this.notifyRules,
    required this.notifyTemplates,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRuleId': dispatchRuleId,
      'dispatchRuleName': dispatchRuleName,
      'groupRules': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleGroupRule>, List<Map<String, dynamic>>>(groupRules, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'labelMatchExpressionGrids': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleLabelMatchExpressionGrid>, List<Map<String, dynamic>>>(labelMatchExpressionGrids, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleLabelMatchExpressionGrid, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyRules': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleNotifyRule>, List<Map<String, dynamic>>>(notifyRules, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleNotifyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyTemplates': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleNotifyTemplate>, List<Map<String, dynamic>>>(notifyTemplates, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleNotifyTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetDispatchRulesRule.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRule(
      dispatchRuleId: pulumi.Input.fromValue(map['dispatchRuleId'] as String),
      dispatchRuleName: pulumi.Input.fromValue(map['dispatchRuleName'] as String),
      groupRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDispatchRulesRuleGroupRule>(map['groupRules']!, (value) => GetDispatchRulesRuleGroupRule.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      labelMatchExpressionGrids: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDispatchRulesRuleLabelMatchExpressionGrid>(map['labelMatchExpressionGrids']!, (value) => GetDispatchRulesRuleLabelMatchExpressionGrid.fromMap((value as Map).cast<String, dynamic>()))),
      notifyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDispatchRulesRuleNotifyRule>(map['notifyRules']!, (value) => GetDispatchRulesRuleNotifyRule.fromMap((value as Map).cast<String, dynamic>()))),
      notifyTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDispatchRulesRuleNotifyTemplate>(map['notifyTemplates']!, (value) => GetDispatchRulesRuleNotifyTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

