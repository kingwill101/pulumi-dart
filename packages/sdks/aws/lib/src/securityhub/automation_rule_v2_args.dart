// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_v2_action.dart';
import 'automation_rule_v2_criteria.dart';

/// {@template pulumi_securityhub_automation_rule_v2_automation_rule_v2_args_doc}
/// The set of arguments for AutomationRuleV2.
/// {@endtemplate}
/// {@macro pulumi_securityhub_automation_rule_v2_automation_rule_v2_args_doc}
class AutomationRuleV2Args {
  /// Actions to take when the rule matches. Maximum of 1 action block. See `action` below.
  final pulumi.Input<AutomationRuleV2Action> action;
  /// Filtering type and configuration of the automation rule. See `criteria` below.
  final pulumi.Input<AutomationRuleV2Criteria> criteria;
  /// A description of the automation rule.
  final pulumi.Input<String> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the automation rule.
  final pulumi.Input<String> ruleName;
  /// The priority of the rule. Lower values indicate higher priority.
  final pulumi.Input<double> ruleOrder;
  /// The status of the rule. Valid values: `ENABLED`, `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? ruleStatus;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutomationRuleV2Args].
  /// [action] Actions to take when the rule matches. Maximum of 1 action block. See `action` below.
  /// [criteria] Filtering type and configuration of the automation rule. See `criteria` below.
  /// [description] A description of the automation rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleName] The name of the automation rule.
  /// [ruleOrder] The priority of the rule. Lower values indicate higher priority.
  /// [ruleStatus] The status of the rule. Valid values: `ENABLED`, `DISABLED`. Defaults to `ENABLED`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AutomationRuleV2Args({
    required this.action,
    required this.criteria,
    required this.description,
    this.region,
    required this.ruleName,
    required this.ruleOrder,
    this.ruleStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<AutomationRuleV2Action, Map<String, dynamic>>(action, (value) => value.toMap()),
      'criteria': pulumi.Input.mapInputValue<AutomationRuleV2Criteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': description,
      'region': ?region,
      'ruleName': ruleName,
      'ruleOrder': ruleOrder,
      'ruleStatus': ?ruleStatus,
      'tags': ?tags,
    };
  }

  factory AutomationRuleV2Args.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2Args(
      action: pulumi.Input.fromValue(AutomationRuleV2Action.fromMap((map['action']! as Map).cast<String, dynamic>())),
      criteria: pulumi.Input.fromValue(AutomationRuleV2Criteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      ruleOrder: pulumi.Input.fromValue(map['ruleOrder'] as double),
      ruleStatus: (() { final guardedValue = map['ruleStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
