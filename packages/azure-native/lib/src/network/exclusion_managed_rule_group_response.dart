// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_response.dart';

/// Defines a managed rule group to use for exclusion.
class ExclusionManagedRuleGroupResponse {
  /// The managed rule group for exclusion.
  final String ruleGroupName;
  /// List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  final List<ExclusionManagedRuleResponse>? rules;

  /// Creates a new [ExclusionManagedRuleGroupResponse].
  /// [ruleGroupName] The managed rule group for exclusion.
  /// [rules] List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  ExclusionManagedRuleGroupResponse({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExclusionManagedRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ExclusionManagedRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleGroupResponse(
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExclusionManagedRuleResponse>(map['rules'], (value) => ExclusionManagedRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

