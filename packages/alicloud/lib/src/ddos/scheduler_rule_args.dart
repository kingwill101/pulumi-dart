// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_rule_rule.dart';

/// {@template pulumi_ddos_scheduler_rule_scheduler_rule_args_doc}
/// The set of arguments for SchedulerRule.
/// {@endtemplate}
/// {@macro pulumi_ddos_scheduler_rule_scheduler_rule_args_doc}
class SchedulerRuleArgs {
  /// The scheduling rule for the Global Accelerator instance that interacts with Anti-DDoS Pro or Anti-DDoS Premium.
  final pulumi.Input<String>? param;
  /// The ID of the resource group to which the anti-DDoS pro instance belongs in resource management. By default, no value is specified, indicating that the domains in the default resource group are listed.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;
  /// The rule type. Valid values:
  /// `2`: tiered protection.
  /// `3`: globalization acceleration.
  /// `6`: Cloud product interaction.
  final pulumi.Input<int> ruleType;
  /// The information about the scheduling rules. See `rules` below.
  final pulumi.Input<List<SchedulerRuleRule>> rules;

  /// Creates a new [SchedulerRuleArgs].
  /// [param] The scheduling rule for the Global Accelerator instance that interacts with Anti-DDoS Pro or Anti-DDoS Premium.
  /// [resourceGroupId] The ID of the resource group to which the anti-DDoS pro instance belongs in resource management. By default, no value is specified, indicating that the domains in the default resource group are listed.
  /// [ruleName] The name of the rule.
  /// [ruleType] The rule type. Valid values:
  /// [rules] The information about the scheduling rules. See `rules` below.
  SchedulerRuleArgs({
    String? param,
    String? resourceGroupId,
    required String ruleName,
    required int ruleType,
    required List<SchedulerRuleRule> rules,
  }) :
      param = pulumi.Input.asOptionalInput<String>(param),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleType = pulumi.Input.asInput<int>(ruleType),
      rules = pulumi.Input.asInput<List<SchedulerRuleRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'param': ?param,
      'resourceGroupId': ?resourceGroupId,
      'ruleName': ruleName,
      'ruleType': ruleType,
      'rules': pulumi.Input.mapInputValue<List<SchedulerRuleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SchedulerRuleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchedulerRuleArgs.fromMap(Map<String, dynamic> map) {
    return SchedulerRuleArgs(
      param: map['param'] == null ? null : map['param'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      ruleName: map['ruleName'] as String,
      ruleType: map['ruleType'] as int,
      rules: pulumi.Input.decodeList<SchedulerRuleRule>(map['rules'], (value) => SchedulerRuleRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

