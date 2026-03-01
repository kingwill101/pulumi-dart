// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_special_retain_rules_rule.dart';

class EnterpriseSnapshotPolicySpecialRetainRules {
  /// Whether special reservations are enabled. Value range:
  /// - true
  /// - false.
  final bool? enabled;
  /// List of special retention rules. See `rules` below.
  final List<EnterpriseSnapshotPolicySpecialRetainRulesRule>? rules;

  /// Creates a new [EnterpriseSnapshotPolicySpecialRetainRules].
  /// [enabled] Whether special reservations are enabled. Value range:
  /// [rules] List of special retention rules. See `rules` below.
  EnterpriseSnapshotPolicySpecialRetainRules({
    this.enabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<EnterpriseSnapshotPolicySpecialRetainRulesRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory EnterpriseSnapshotPolicySpecialRetainRules.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicySpecialRetainRules(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<EnterpriseSnapshotPolicySpecialRetainRulesRule>(map['rules'], (value) => EnterpriseSnapshotPolicySpecialRetainRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

