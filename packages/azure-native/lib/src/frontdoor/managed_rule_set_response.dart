// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion_response.dart';
import 'managed_rule_group_override_response.dart';

/// Defines a managed rule set.
class ManagedRuleSetResponse {
  /// Describes the exclusions that are applied to all rules in the set.
  final List<ManagedRuleExclusionResponse>? exclusions;
  /// Defines the rule group overrides to apply to the rule set.
  final List<ManagedRuleGroupOverrideResponse>? ruleGroupOverrides;
  /// Defines the rule set action.
  final String? ruleSetAction;
  /// Defines the rule set type to use.
  final String ruleSetType;
  /// Defines the version of the rule set to use.
  final String ruleSetVersion;

  /// Creates a new [ManagedRuleSetResponse].
  /// [exclusions] Describes the exclusions that are applied to all rules in the set.
  /// [ruleGroupOverrides] Defines the rule group overrides to apply to the rule set.
  /// [ruleSetAction] Defines the rule set action.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSetResponse({
    this.exclusions,
    this.ruleGroupOverrides,
    this.ruleSetAction,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<ManagedRuleExclusionResponse, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleGroupOverrides': ?ruleGroupOverrides == null ? null : pulumi.Input.encodeList<ManagedRuleGroupOverrideResponse, Map<String, dynamic>>(ruleGroupOverrides!, (value) => value.toMap()),
      'ruleSetAction': ?ruleSetAction,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetResponse(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<ManagedRuleExclusionResponse>(map['exclusions'], (value) => ManagedRuleExclusionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : pulumi.Input.decodeList<ManagedRuleGroupOverrideResponse>(map['ruleGroupOverrides'], (value) => ManagedRuleGroupOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleSetAction: map['ruleSetAction'] == null ? null : map['ruleSetAction'] as String,
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

