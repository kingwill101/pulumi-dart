// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_action.dart';
import 'rule_set_rule_condition.dart';
import 'rule_set_rule_unless.dart';

class RuleSetRule {
  /// One or more actions to execute when all conditions match. Between 1 and 10 actions are supported. Each action must contain exactly one action configuration. See `action` Block.
  final pulumi.Input<List<RuleSetRuleAction>?>? actions;
  /// One or more conditions that must all evaluate to true for the rule to match. Up to 10 conditions are supported. See `condition` Block.
  final pulumi.Input<List<RuleSetRuleCondition>?>? conditions;
  /// Name of the rule.
  final pulumi.Input<String?>? name;
  /// One or more conditions that prevent the rule from matching when any evaluates to true. Up to 10 conditions are supported. See `condition` Block.
  final pulumi.Input<List<RuleSetRuleUnless>?>? unlesses;

  /// Creates a new [RuleSetRule].
  /// [actions] One or more actions to execute when all conditions match. Between 1 and 10 actions are supported. Each action must contain exactly one action configuration. See `action` Block.
  /// [conditions] One or more conditions that must all evaluate to true for the rule to match. Up to 10 conditions are supported. See `condition` Block.
  /// [name] Name of the rule.
  /// [unlesses] One or more conditions that prevent the rule from matching when any evaluates to true. Up to 10 conditions are supported. See `condition` Block.
  const RuleSetRule({
    this.actions,
    this.conditions,
    this.name,
    this.unlesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<RuleSetRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<RuleSetRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<RuleSetRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<RuleSetRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'unlesses': ?pulumi.Input.mapOptionalInputValue<List<RuleSetRuleUnless>, List<Map<String, dynamic>>>(unlesses, (value) => pulumi.Input.encodeList<RuleSetRuleUnless, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleSetRule.fromMap(Map<String, dynamic> map) {
    return RuleSetRule(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSetRuleAction>(guardedValue, (value) => RuleSetRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSetRuleCondition>(guardedValue, (value) => RuleSetRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unlesses: (() { final guardedValue = map['unlesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSetRuleUnless>(guardedValue, (value) => RuleSetRuleUnless.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
