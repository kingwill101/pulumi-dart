// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_v2_action.dart';
import 'automation_rule_v2_criteria.dart';

/// Input properties used for looking up and filtering AutomationRuleV2 resources.
class AutomationRuleV2State {
  /// Actions to take when the rule matches. Maximum of 1 action block. See `action` below.
  final pulumi.Input<AutomationRuleV2Action?>? action;
  final pulumi.Input<String?>? arn;
  /// Filtering type and configuration of the automation rule. See `criteria` below.
  final pulumi.Input<AutomationRuleV2Criteria?>? criteria;
  /// A description of the automation rule.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the automation rule.
  final pulumi.Input<String?>? ruleId;
  /// The name of the automation rule.
  final pulumi.Input<String?>? ruleName;
  /// The priority of the rule. Lower values indicate higher priority.
  final pulumi.Input<double?>? ruleOrder;
  /// The status of the rule. Valid values: `ENABLED`, `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String?>? ruleStatus;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AutomationRuleV2State].
  /// [action] Actions to take when the rule matches. Maximum of 1 action block. See `action` below.
  /// [arn] Optional.
  /// [criteria] Filtering type and configuration of the automation rule. See `criteria` below.
  /// [description] A description of the automation rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleId] ID of the automation rule.
  /// [ruleName] The name of the automation rule.
  /// [ruleOrder] The priority of the rule. Lower values indicate higher priority.
  /// [ruleStatus] The status of the rule. Valid values: `ENABLED`, `DISABLED`. Defaults to `ENABLED`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AutomationRuleV2State({
    this.action,
    this.arn,
    this.criteria,
    this.description,
    this.region,
    this.ruleId,
    this.ruleName,
    this.ruleOrder,
    this.ruleStatus,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<AutomationRuleV2Action, Map<String, dynamic>>(action, (value) => value.toMap()),
      'arn': ?arn,
      'criteria': ?pulumi.Input.mapOptionalInputValue<AutomationRuleV2Criteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'region': ?region,
      'ruleId': ?ruleId,
      'ruleName': ?ruleName,
      'ruleOrder': ?ruleOrder,
      'ruleStatus': ?ruleStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AutomationRuleV2State.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2State(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleV2Action.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleV2Criteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ruleStatus: (() { final guardedValue = map['ruleStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
