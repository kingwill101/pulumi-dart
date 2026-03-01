// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_override.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverride {
  /// Describes the managed rule group within the rule set to override
  final String ruleGroupName;
  /// List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  final List<ManagedRuleOverride>? rules;

  /// Creates a new [ManagedRuleGroupOverride].
  /// [ruleGroupName] Describes the managed rule group within the rule set to override
  /// [rules] List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverride({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ManagedRuleOverride, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ManagedRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverride(
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ManagedRuleOverride>(map['rules'], (value) => ManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

