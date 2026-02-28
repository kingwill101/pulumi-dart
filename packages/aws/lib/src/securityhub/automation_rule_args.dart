// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action.dart';
import 'automation_rule_criteria.dart';

/// {@template pulumi_securityhub_automation_rule_automation_rule_args_doc}
/// The set of arguments for AutomationRule.
/// {@endtemplate}
/// {@macro pulumi_securityhub_automation_rule_automation_rule_args_doc}
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

  /// Creates a new [AutomationRuleArgs].
  /// [actions] A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  /// [criteria] A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  /// [description] The description of the rule.
  /// [isTerminal] Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleName] The name of the rule.
  /// [ruleOrder] An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  /// [ruleStatus] Whether the rule is active after it is created.
  /// [tags] Optional.
  AutomationRuleArgs({
    required List<AutomationRuleAction> actions,
    required AutomationRuleCriteria criteria,
    required String description,
    bool? isTerminal,
    String? region,
    required String ruleName,
    required int ruleOrder,
    String? ruleStatus,
    Map<String, String>? tags,
  })  : actions = pulumi.Input.asInput<List<AutomationRuleAction>>(actions),
        criteria = pulumi.Input.asInput<AutomationRuleCriteria>(criteria),
        description = pulumi.Input.asInput<String>(description),
        isTerminal = pulumi.Input.asOptionalInput<bool>(isTerminal),
        region = pulumi.Input.asOptionalInput<String>(region),
        ruleName = pulumi.Input.asInput<String>(ruleName),
        ruleOrder = pulumi.Input.asInput<int>(ruleOrder),
        ruleStatus = pulumi.Input.asOptionalInput<String>(ruleStatus),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      actions: pulumi.Input.decodeList<AutomationRuleAction>(
          map['actions'],
          (value) => AutomationRuleAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      criteria: AutomationRuleCriteria.fromMap(
          (map['criteria'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      isTerminal: map['isTerminal'] == null ? null : map['isTerminal'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      ruleName: map['ruleName'] as String,
      ruleOrder: map['ruleOrder'] as int,
      ruleStatus:
          map['ruleStatus'] == null ? null : map['ruleStatus'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
