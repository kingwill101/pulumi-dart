// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule.dart';

/// Defines a managed rule group to use for exclusion.
class ExclusionManagedRuleGroup {
  /// The managed rule group for exclusion.
  final String ruleGroupName;
  /// List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  final List<ExclusionManagedRule>? rules;

  /// Creates a new [ExclusionManagedRuleGroup].
  /// [ruleGroupName] The managed rule group for exclusion.
  /// [rules] List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  ExclusionManagedRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExclusionManagedRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ExclusionManagedRuleGroup.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleGroup(
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExclusionManagedRule>(map['rules'], (value) => ExclusionManagedRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

