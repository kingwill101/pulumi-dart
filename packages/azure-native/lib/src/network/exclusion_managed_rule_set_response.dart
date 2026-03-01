// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_group_response.dart';

/// Defines a managed rule set for Exclusions.
class ExclusionManagedRuleSetResponse {
  /// Defines the rule groups to apply to the rule set.
  final List<ExclusionManagedRuleGroupResponse>? ruleGroups;
  /// Defines the rule set type to use.
  final String ruleSetType;
  /// Defines the version of the rule set to use.
  final String ruleSetVersion;

  /// Creates a new [ExclusionManagedRuleSetResponse].
  /// [ruleGroups] Defines the rule groups to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ExclusionManagedRuleSetResponse({
    this.ruleGroups,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroups': ?ruleGroups == null ? null : pulumi.Input.encodeList<ExclusionManagedRuleGroupResponse, Map<String, dynamic>>(ruleGroups!, (value) => value.toMap()),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ExclusionManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleSetResponse(
      ruleGroups: map['ruleGroups'] == null ? null : pulumi.Input.decodeList<ExclusionManagedRuleGroupResponse>(map['ruleGroups'], (value) => ExclusionManagedRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

