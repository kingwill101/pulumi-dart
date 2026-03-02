// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion.dart';
import 'managed_rule_override.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverride {
  /// Describes the exclusions that are applied to all rules in the group.
  final pulumi.Input<List<ManagedRuleExclusion>>? exclusions;
  /// Describes the managed rule group to override.
  final pulumi.Input<String> ruleGroupName;
  /// List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  final pulumi.Input<List<ManagedRuleOverride>>? rules;

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
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ManagedRuleExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleOverride>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ManagedRuleOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverride(
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<ManagedRuleExclusion>(map['exclusions']!, (value) => ManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleGroupName: (map['ruleGroupName'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ManagedRuleOverride>(map['rules']!, (value) => ManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

