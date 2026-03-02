// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion.dart';
import 'managed_rule_group_override.dart';

/// Defines a managed rule set.
class ManagedRuleSet {
  /// Describes the exclusions that are applied to all rules in the set.
  final pulumi.Input<List<ManagedRuleExclusion>>? exclusions;
  /// Defines the rule group overrides to apply to the rule set.
  final pulumi.Input<List<ManagedRuleGroupOverride>>? ruleGroupOverrides;
  /// Defines the rule set action.
  final pulumi.Input<String>? ruleSetAction;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSet].
  /// [exclusions] Describes the exclusions that are applied to all rules in the set.
  /// [ruleGroupOverrides] Defines the rule group overrides to apply to the rule set.
  /// [ruleSetAction] Defines the rule set action.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSet({
    this.exclusions,
    this.ruleGroupOverrides,
    this.ruleSetAction,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ManagedRuleExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleGroupOverrides': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleGroupOverride>, List<Map<String, dynamic>>>(ruleGroupOverrides, (value) => pulumi.Input.encodeList<ManagedRuleGroupOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetAction': ?ruleSetAction,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSet.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSet(
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<ManagedRuleExclusion>(map['exclusions'], (value) => ManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : (pulumi.Input.decodeList<ManagedRuleGroupOverride>(map['ruleGroupOverrides'], (value) => ManagedRuleGroupOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleSetAction: map['ruleSetAction'] == null ? null : (map['ruleSetAction'] as String).input(),
      ruleSetType: (map['ruleSetType'] as String).input(),
      ruleSetVersion: (map['ruleSetVersion'] as String).input(),
    );
  }
}

