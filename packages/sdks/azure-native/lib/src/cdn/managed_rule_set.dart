// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_group_override.dart';

/// Defines a managed rule set.
class ManagedRuleSet {
  /// Verizon only : If the rule set supports anomaly detection mode, this describes the threshold for blocking requests.
  final pulumi.Input<int>? anomalyScore;
  /// Defines the rule overrides to apply to the rule set.
  final pulumi.Input<List<ManagedRuleGroupOverride>>? ruleGroupOverrides;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSet].
  /// [anomalyScore] Verizon only : If the rule set supports anomaly detection mode, this describes the threshold for blocking requests.
  /// [ruleGroupOverrides] Defines the rule overrides to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSet({
    this.anomalyScore,
    this.ruleGroupOverrides,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyScore': ?anomalyScore,
      'ruleGroupOverrides': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleGroupOverride>, List<Map<String, dynamic>>>(ruleGroupOverrides, (value) => pulumi.Input.encodeList<ManagedRuleGroupOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSet.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSet(
      anomalyScore: map['anomalyScore'] == null ? null : (map['anomalyScore'] as int).input(),
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : (pulumi.Input.decodeList<ManagedRuleGroupOverride>(map['ruleGroupOverrides'], (value) => ManagedRuleGroupOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleSetType: (map['ruleSetType'] as String).input(),
      ruleSetVersion: (map['ruleSetVersion'] as String).input(),
    );
  }
}

