// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_group_override_response.dart';

/// Defines a managed rule set.
class ManagedRuleSetResponse {
  /// Defines the rule group overrides to apply to the rule set.
  final List<ManagedRuleGroupOverrideResponse>? ruleGroupOverrides;
  /// Defines the rule set type to use.
  final String ruleSetType;
  /// Defines the version of the rule set to use.
  final String ruleSetVersion;

  /// Creates a new [ManagedRuleSetResponse].
  /// [ruleGroupOverrides] Defines the rule group overrides to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSetResponse({
    this.ruleGroupOverrides,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupOverrides': ?ruleGroupOverrides == null ? null : pulumi.Input.encodeList<ManagedRuleGroupOverrideResponse, Map<String, dynamic>>(ruleGroupOverrides!, (value) => value.toMap()),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetResponse(
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : pulumi.Input.decodeList<ManagedRuleGroupOverrideResponse>(map['ruleGroupOverrides'], (value) => ManagedRuleGroupOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

