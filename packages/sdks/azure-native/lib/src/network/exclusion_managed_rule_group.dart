// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule.dart';

/// Defines a managed rule group to use for exclusion.
class ExclusionManagedRuleGroup {
  /// The managed rule group for exclusion.
  final pulumi.Input<String> ruleGroupName;
  /// List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  final pulumi.Input<List<ExclusionManagedRule>>? rules;

  /// Creates a new [ExclusionManagedRuleGroup].
  /// [ruleGroupName] The managed rule group for exclusion.
  /// [rules] List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  const ExclusionManagedRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExclusionManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExclusionManagedRuleGroup.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleGroup(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExclusionManagedRule>(guardedValue, (value) => ExclusionManagedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
