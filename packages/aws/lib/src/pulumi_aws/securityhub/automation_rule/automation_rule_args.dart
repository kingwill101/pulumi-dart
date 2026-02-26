// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../automation_rule_action/automation_rule_action.dart';
import '../automation_rule_criteria/automation_rule_criteria.dart';

/// The set of arguments for AutomationRule.
class AutomationRuleArgs {
  /// A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  final Input<List<AutomationRuleAction>> actions;

  /// A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  final Input<AutomationRuleCriteria> criteria;

  /// The description of the rule.
  final Input<String> description;

  /// Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? isTerminal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the rule.
  final Input<String> ruleName;

  /// An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  final Input<int> ruleOrder;

  /// Whether the rule is active after it is created.
  final Input<String>? ruleStatus;
  final Input<Map<String, String>>? tags;

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
    map['actions'] = Input.mapInputValue<List<AutomationRuleAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) => Input.encodeList<AutomationRuleAction, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['criteria'] =
        Input.mapInputValue<AutomationRuleCriteria, Map<String, dynamic>>(
            criteria, (value) => value.toMap());
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
      actions: Input.asInput<List<AutomationRuleAction>>(map['actions']),
      criteria: Input.asInput<AutomationRuleCriteria>(map['criteria']),
      description: Input.asInput<String>(map['description']),
      isTerminal: Input.asOptionalInput<bool>(map['isTerminal']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleName: Input.asInput<String>(map['ruleName']),
      ruleOrder: Input.asInput<int>(map['ruleOrder']),
      ruleStatus: Input.asOptionalInput<String>(map['ruleStatus']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
