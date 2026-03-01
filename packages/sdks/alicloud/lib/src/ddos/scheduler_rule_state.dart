// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_rule_rule.dart';

/// Input properties used for looking up and filtering SchedulerRule resources.
class SchedulerRuleState {
  /// The cname is the traffic scheduler corresponding to rules.
  final pulumi.Input<String>? cname;
  /// The scheduling rule for the Global Accelerator instance that interacts with Anti-DDoS Pro or Anti-DDoS Premium.
  final pulumi.Input<String>? param;
  /// The ID of the resource group to which the anti-DDoS pro instance belongs in resource management. By default, no value is specified, indicating that the domains in the default resource group are listed.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// The rule type. Valid values:
  /// `2`: tiered protection.
  /// `3`: globalization acceleration.
  /// `6`: Cloud product interaction.
  final pulumi.Input<int>? ruleType;
  /// The information about the scheduling rules. See `rules` below.
  final pulumi.Input<List<SchedulerRuleRule>>? rules;

  /// Creates a new [SchedulerRuleState].
  /// [cname] The cname is the traffic scheduler corresponding to rules.
  /// [param] The scheduling rule for the Global Accelerator instance that interacts with Anti-DDoS Pro or Anti-DDoS Premium.
  /// [resourceGroupId] The ID of the resource group to which the anti-DDoS pro instance belongs in resource management. By default, no value is specified, indicating that the domains in the default resource group are listed.
  /// [ruleName] The name of the rule.
  /// [ruleType] The rule type. Valid values:
  /// [rules] The information about the scheduling rules. See `rules` below.
  SchedulerRuleState({
    pulumi.Output<String>? cname,
    pulumi.Output<String>? param,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleType,
    pulumi.Output<List<SchedulerRuleRule>>? rules,
  }) :
      cname = pulumi.Input.asOptionalInput<String>(cname),
      param = pulumi.Input.asOptionalInput<String>(param),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleType = pulumi.Input.asOptionalInput<int>(ruleType),
      rules = pulumi.Input.asOptionalInput<List<SchedulerRuleRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': ?cname,
      'param': ?param,
      'resourceGroupId': ?resourceGroupId,
      'ruleName': ?ruleName,
      'ruleType': ?ruleType,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SchedulerRuleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SchedulerRuleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchedulerRuleState.fromMap(Map<String, dynamic> map) {
    return SchedulerRuleState(
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      param: map['param'] == null ? null : pulumi.Output.create<String>(map['param'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleType: map['ruleType'] == null ? null : pulumi.Output.create<int>(map['ruleType'] as int),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<SchedulerRuleRule>>(pulumi.Input.decodeList<SchedulerRuleRule>(map['rules'], (value) => SchedulerRuleRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

