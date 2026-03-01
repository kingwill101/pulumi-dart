// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action.dart';
import 'automation_rule_criteria.dart';

/// Input properties used for looking up and filtering AutomationRule resources.
class AutomationRuleState {
  /// A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  final pulumi.Input<List<AutomationRuleAction>>? actions;
  /// The ARN of the Security Hub automation rule.
  final pulumi.Input<String>? arn;
  /// A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  final pulumi.Input<AutomationRuleCriteria>? criteria;
  /// The description of the rule.
  final pulumi.Input<String>? description;
  /// Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  final pulumi.Input<bool>? isTerminal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  final pulumi.Input<int>? ruleOrder;
  /// Whether the rule is active after it is created.
  final pulumi.Input<String>? ruleStatus;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AutomationRuleState].
  /// [actions] A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  /// [arn] The ARN of the Security Hub automation rule.
  /// [criteria] A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  /// [description] The description of the rule.
  /// [isTerminal] Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleName] The name of the rule.
  /// [ruleOrder] An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  /// [ruleStatus] Whether the rule is active after it is created.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  AutomationRuleState({
    pulumi.Output<List<AutomationRuleAction>>? actions,
    pulumi.Output<String>? arn,
    pulumi.Output<AutomationRuleCriteria>? criteria,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isTerminal,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleOrder,
    pulumi.Output<String>? ruleStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      actions = pulumi.Input.asOptionalInput<List<AutomationRuleAction>>(actions),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      criteria = pulumi.Input.asOptionalInput<AutomationRuleCriteria>(criteria),
      description = pulumi.Input.asOptionalInput<String>(description),
      isTerminal = pulumi.Input.asOptionalInput<bool>(isTerminal),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleOrder = pulumi.Input.asOptionalInput<int>(ruleOrder),
      ruleStatus = pulumi.Input.asOptionalInput<String>(ruleStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AutomationRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'criteria': ?pulumi.Input.mapOptionalInputValue<AutomationRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'isTerminal': ?isTerminal,
      'region': ?region,
      'ruleName': ?ruleName,
      'ruleOrder': ?ruleOrder,
      'ruleStatus': ?ruleStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AutomationRuleState.fromMap(Map<String, dynamic> map) {
    return AutomationRuleState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<AutomationRuleAction>>(pulumi.Input.decodeList<AutomationRuleAction>(map['actions'], (value) => AutomationRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      criteria: map['criteria'] == null ? null : pulumi.Output.create<AutomationRuleCriteria>(AutomationRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isTerminal: map['isTerminal'] == null ? null : pulumi.Output.create<bool>(map['isTerminal'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleOrder: map['ruleOrder'] == null ? null : pulumi.Output.create<int>(map['ruleOrder'] as int),
      ruleStatus: map['ruleStatus'] == null ? null : pulumi.Output.create<String>(map['ruleStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

