// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_activated_rule_action.dart';

class RuleGroupActivatedRule {
  /// Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.
  final RuleGroupActivatedRuleAction action;

  /// Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value.
  final int priority;

  /// The ID of a rule
  final String ruleId;
  final String? type;

  /// Creates a new [RuleGroupActivatedRule].
  /// [action] Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.
  /// [priority] Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value.
  /// [ruleId] The ID of a rule
  /// [type] Optional.
  RuleGroupActivatedRule({
    required this.action,
    required this.priority,
    required this.ruleId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'priority': priority,
      'ruleId': ruleId,
      'type': ?type,
    };
  }

  factory RuleGroupActivatedRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupActivatedRule(
      action: RuleGroupActivatedRuleAction.fromMap(
        (map['action'] as Map).cast<String, dynamic>(),
      ),
      priority: map['priority'] as int,
      ruleId: map['ruleId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
