// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion_response.dart';
import 'managed_rule_override_response.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverrideResponse {
  /// Describes the exclusions that are applied to all rules in the group.
  final List<ManagedRuleExclusionResponse>? exclusions;
  /// Describes the managed rule group to override.
  final String ruleGroupName;
  /// List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  final List<ManagedRuleOverrideResponse>? rules;

  /// Creates a new [ManagedRuleGroupOverrideResponse].
  /// [exclusions] Describes the exclusions that are applied to all rules in the group.
  /// [ruleGroupName] Describes the managed rule group to override.
  /// [rules] List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverrideResponse({
    this.exclusions,
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<ManagedRuleExclusionResponse, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ManagedRuleOverrideResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ManagedRuleGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverrideResponse(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<ManagedRuleExclusionResponse>(map['exclusions'], (value) => ManagedRuleExclusionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ManagedRuleOverrideResponse>(map['rules'], (value) => ManagedRuleOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

