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
    required pulumi.Output<List<AutomationRuleAction>> actions,
    required pulumi.Output<AutomationRuleCriteria> criteria,
    required pulumi.Output<String> description,
    pulumi.Output<bool>? isTerminal,
    pulumi.Output<String>? region,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<int> ruleOrder,
    pulumi.Output<String>? ruleStatus,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actions = pulumi.Input.asInput<List<AutomationRuleAction>>(actions),
      criteria = pulumi.Input.asInput<AutomationRuleCriteria>(criteria),
      description = pulumi.Input.asInput<String>(description),
      isTerminal = pulumi.Input.asOptionalInput<bool>(isTerminal),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleOrder = pulumi.Input.asInput<int>(ruleOrder),
      ruleStatus = pulumi.Input.asOptionalInput<String>(ruleStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<AutomationRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AutomationRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': pulumi.Input.mapInputValue<AutomationRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': description,
      'isTerminal': ?isTerminal,
      'region': ?region,
      'ruleName': ruleName,
      'ruleOrder': ruleOrder,
      'ruleStatus': ?ruleStatus,
      'tags': ?tags,
    };
  }

  factory AutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutomationRuleArgs(
      actions: pulumi.Output.create<List<AutomationRuleAction>>(pulumi.Input.decodeList<AutomationRuleAction>(map['actions'], (value) => AutomationRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      criteria: pulumi.Output.create<AutomationRuleCriteria>(AutomationRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())),
      description: pulumi.Output.create<String>(map['description'] as String),
      isTerminal: map['isTerminal'] == null ? null : pulumi.Output.create<bool>(map['isTerminal'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      ruleOrder: pulumi.Output.create<int>(map['ruleOrder'] as int),
      ruleStatus: map['ruleStatus'] == null ? null : pulumi.Output.create<String>(map['ruleStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

