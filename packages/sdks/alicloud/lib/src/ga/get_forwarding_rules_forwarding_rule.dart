// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_action.dart';
import 'get_forwarding_rules_forwarding_rule_rule_condition.dart';

class GetForwardingRulesForwardingRule {
  /// Forwarding Policy ID.
  final pulumi.Input<String> forwardingRuleId;
  /// Forwarding policy name. The length of the name is 2-128 English or Chinese characters.
  final pulumi.Input<String> forwardingRuleName;
  /// Forwarding Policy Status.
  final pulumi.Input<String> forwardingRuleStatus;
  final pulumi.Input<String> id;
  /// The ID of the listener.
  final pulumi.Input<String> listenerId;
  /// Forwarding policy priority.
  final pulumi.Input<int> priority;
  /// The IP protocol used by the GA instance.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleAction>> ruleActions;
  /// Forward action.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleCondition>> ruleConditions;

  /// Creates a new [GetForwardingRulesForwardingRule].
  /// [forwardingRuleId] Forwarding Policy ID.
  /// [forwardingRuleName] Forwarding policy name. The length of the name is 2-128 English or Chinese characters.
  /// [forwardingRuleStatus] Forwarding Policy Status.
  /// [id] Required.
  /// [listenerId] The ID of the listener.
  /// [priority] Forwarding policy priority.
  /// [ruleActions] The IP protocol used by the GA instance.
  /// [ruleConditions] Forward action.
  GetForwardingRulesForwardingRule({
    required this.forwardingRuleId,
    required this.forwardingRuleName,
    required this.forwardingRuleStatus,
    required this.id,
    required this.listenerId,
    required this.priority,
    required this.ruleActions,
    required this.ruleConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRuleId': forwardingRuleId,
      'forwardingRuleName': forwardingRuleName,
      'forwardingRuleStatus': forwardingRuleStatus,
      'id': id,
      'listenerId': listenerId,
      'priority': priority,
      'ruleActions': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleAction>, List<Map<String, dynamic>>>(ruleActions, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditions': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleCondition>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetForwardingRulesForwardingRule.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRule(
      forwardingRuleId: pulumi.Input.fromValue(map['forwardingRuleId'] as String),
      forwardingRuleName: pulumi.Input.fromValue(map['forwardingRuleName'] as String),
      forwardingRuleStatus: pulumi.Input.fromValue(map['forwardingRuleStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      ruleActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleAction>(map['ruleActions']!, (value) => GetForwardingRulesForwardingRuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      ruleConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleCondition>(map['ruleConditions']!, (value) => GetForwardingRulesForwardingRuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

