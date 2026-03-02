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
    this.actions,
    this.arn,
    this.criteria,
    this.description,
    this.isTerminal,
    this.region,
    this.ruleName,
    this.ruleOrder,
    this.ruleStatus,
    this.tags,
    this.tagsAll,
  });

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
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<AutomationRuleAction>(map['actions'], (value) => AutomationRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      criteria: map['criteria'] == null ? null : (AutomationRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isTerminal: map['isTerminal'] == null ? null : (map['isTerminal'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      ruleOrder: map['ruleOrder'] == null ? null : (map['ruleOrder'] as int).input(),
      ruleStatus: map['ruleStatus'] == null ? null : (map['ruleStatus'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

