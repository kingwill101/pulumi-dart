// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_special_retain_rules_rule.dart';

class EnterpriseSnapshotPolicySpecialRetainRules {
  /// Whether special reservations are enabled. Value range:
  /// - true
  /// - false.
  final pulumi.Input<bool>? enabled;
  /// List of special retention rules. See `rules` below.
  final pulumi.Input<List<EnterpriseSnapshotPolicySpecialRetainRulesRule>>? rules;

  /// Creates a new [EnterpriseSnapshotPolicySpecialRetainRules].
  /// [enabled] Whether special reservations are enabled. Value range:
  /// [rules] List of special retention rules. See `rules` below.
  const EnterpriseSnapshotPolicySpecialRetainRules({
    this.enabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseSnapshotPolicySpecialRetainRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<EnterpriseSnapshotPolicySpecialRetainRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseSnapshotPolicySpecialRetainRules.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicySpecialRetainRules(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseSnapshotPolicySpecialRetainRulesRule>(guardedValue, (value) => EnterpriseSnapshotPolicySpecialRetainRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

