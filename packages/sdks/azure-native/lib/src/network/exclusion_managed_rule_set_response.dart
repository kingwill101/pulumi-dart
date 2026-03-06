// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_group_response.dart';

/// Defines a managed rule set for Exclusions.
class ExclusionManagedRuleSetResponse {
  /// Defines the rule groups to apply to the rule set.
  final pulumi.Input<List<ExclusionManagedRuleGroupResponse>>? ruleGroups;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ExclusionManagedRuleSetResponse].
  /// [ruleGroups] Defines the rule groups to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  const ExclusionManagedRuleSetResponse({
    this.ruleGroups,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroups': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRuleGroupResponse>, List<Map<String, dynamic>>>(ruleGroups, (value) => pulumi.Input.encodeList<ExclusionManagedRuleGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ExclusionManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleSetResponse(
      ruleGroups: (() { final guardedValue = map['ruleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExclusionManagedRuleGroupResponse>(guardedValue, (value) => ExclusionManagedRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}

