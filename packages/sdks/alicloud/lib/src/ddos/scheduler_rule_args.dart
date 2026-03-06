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
  const SchedulerRuleArgs({
    this.param,
    this.resourceGroupId,
    required this.ruleName,
    required this.ruleType,
    required this.rules,
  });

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
      param: (() { final guardedValue = map['param']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as int),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<SchedulerRuleRule>(map['rules']!, (value) => SchedulerRuleRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

