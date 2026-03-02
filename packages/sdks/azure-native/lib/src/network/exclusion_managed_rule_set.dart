// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_group.dart';

/// Defines a managed rule set for Exclusions.
class ExclusionManagedRuleSet {
  /// Defines the rule groups to apply to the rule set.
  final pulumi.Input<List<ExclusionManagedRuleGroup>>? ruleGroups;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ExclusionManagedRuleSet].
  /// [ruleGroups] Defines the rule groups to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ExclusionManagedRuleSet({
    this.ruleGroups,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRuleGroup>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ExclusionManagedRuleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ExclusionManagedRuleSet.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleSet(
      ruleGroups: map['ruleGroups'] == null ? null : (pulumi.Input.decodeList<ExclusionManagedRuleGroup>(map['ruleGroups'], (value) => ExclusionManagedRuleGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleSetType: (map['ruleSetType'] as String).input(),
      ruleSetVersion: (map['ruleSetVersion'] as String).input(),
    );
  }
}

