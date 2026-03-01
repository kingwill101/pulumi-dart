// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion.dart';
import 'managed_rule_override.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverride {
  /// Describes the exclusions that are applied to all rules in the group.
  final List<ManagedRuleExclusion>? exclusions;
  /// Describes the managed rule group to override.
  final String ruleGroupName;
  /// List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  final List<ManagedRuleOverride>? rules;

  /// Creates a new [ManagedRuleGroupOverride].
  /// [exclusions] Describes the exclusions that are applied to all rules in the group.
  /// [ruleGroupName] Describes the managed rule group to override.
  /// [rules] List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverride({
    this.exclusions,
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<ManagedRuleExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ManagedRuleOverride, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ManagedRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverride(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<ManagedRuleExclusion>(map['exclusions'], (value) => ManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>())),
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ManagedRuleOverride>(map['rules'], (value) => ManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

