// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_override_response.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverrideResponse {
  /// Describes the managed rule group within the rule set to override
  final String ruleGroupName;
  /// List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  final List<ManagedRuleOverrideResponse>? rules;

  /// Creates a new [ManagedRuleGroupOverrideResponse].
  /// [ruleGroupName] Describes the managed rule group within the rule set to override
  /// [rules] List of rules that will be enabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverrideResponse({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ManagedRuleOverrideResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ManagedRuleGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverrideResponse(
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ManagedRuleOverrideResponse>(map['rules'], (value) => ManagedRuleOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

