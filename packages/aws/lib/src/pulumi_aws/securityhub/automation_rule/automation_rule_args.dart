// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../automation_rule_action/automation_rule_action.dart';
import '../automation_rule_criteria/automation_rule_criteria.dart';

/// The set of arguments for AutomationRule.
class AutomationRuleArgs {
  /// A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  final pulumi.Input<List<AutomationRuleAction>> actions;

  /// A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  final pulumi.Input<AutomationRuleCriteria> criteria;

  /// The description of the rule.
  final pulumi.Input<String> description;

  /// Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  final pulumi.Input<bool>? isTerminal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  final pulumi.Input<int> ruleOrder;

  /// Whether the rule is active after it is created.
  final pulumi.Input<String>? ruleStatus;
  final pulumi.Input<Map<String, String>>? tags;

  AutomationRuleArgs({
    required this.actions,
    required this.criteria,
    required this.description,
    this.isTerminal,
    this.region,
    required this.ruleName,
    required this.ruleOrder,
    this.ruleStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.mapInputValue<List<AutomationRuleAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) =>
            pulumi.Input.encodeList<AutomationRuleAction, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['criteria'] = pulumi.Input.mapInputValue<AutomationRuleCriteria,
        Map<String, dynamic>>(criteria, (value) => value.toMap());
    map['description'] = description;
    final isTerminalValue = isTerminal;
    if (isTerminalValue != null) {
      map['isTerminal'] = isTerminalValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleName'] = ruleName;
    map['ruleOrder'] = ruleOrder;
    final ruleStatusValue = ruleStatus;
    if (ruleStatusValue != null) {
      map['ruleStatus'] = ruleStatusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutomationRuleArgs(
      actions: pulumi.Input.asInput<List<AutomationRuleAction>>(map['actions']),
      criteria: pulumi.Input.asInput<AutomationRuleCriteria>(map['criteria']),
      description: pulumi.Input.asInput<String>(map['description']),
      isTerminal: pulumi.Input.asOptionalInput<bool>(map['isTerminal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleName: pulumi.Input.asInput<String>(map['ruleName']),
      ruleOrder: pulumi.Input.asInput<int>(map['ruleOrder']),
      ruleStatus: pulumi.Input.asOptionalInput<String>(map['ruleStatus']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
