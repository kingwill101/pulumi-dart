// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_action.dart';
import 'get_forwarding_rules_forwarding_rule_rule_condition.dart';

class GetForwardingRulesForwardingRule {
  /// Forwarding Policy ID.
  final String forwardingRuleId;
  /// Forwarding policy name. The length of the name is 2-128 English or Chinese characters.
  final String forwardingRuleName;
  /// Forwarding Policy Status.
  final String forwardingRuleStatus;
  final String id;
  /// The ID of the listener.
  final String listenerId;
  /// Forwarding policy priority.
  final int priority;
  /// The IP protocol used by the GA instance.
  final List<GetForwardingRulesForwardingRuleRuleAction> ruleActions;
  /// Forward action.
  final List<GetForwardingRulesForwardingRuleRuleCondition> ruleConditions;

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
      'ruleActions': pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleAction, Map<String, dynamic>>(ruleActions, (value) => value.toMap()),
      'ruleConditions': pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleCondition, Map<String, dynamic>>(ruleConditions, (value) => value.toMap()),
    };
  }

  factory GetForwardingRulesForwardingRule.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRule(
      forwardingRuleId: map['forwardingRuleId'] as String,
      forwardingRuleName: map['forwardingRuleName'] as String,
      forwardingRuleStatus: map['forwardingRuleStatus'] as String,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      priority: map['priority'] as int,
      ruleActions: pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleAction>(map['ruleActions'], (value) => GetForwardingRulesForwardingRuleRuleAction.fromMap((value as Map).cast<String, dynamic>())),
      ruleConditions: pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleCondition>(map['ruleConditions'], (value) => GetForwardingRulesForwardingRuleRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

