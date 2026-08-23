// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_response.dart';

/// Defines a managed rule group to use for exclusion.
class ExclusionManagedRuleGroupResponse {
  /// The managed rule group for exclusion.
  final pulumi.Input<String> ruleGroupName;
  /// List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  final pulumi.Input<List<ExclusionManagedRuleResponse>>? rules;

  /// Creates a new [ExclusionManagedRuleGroupResponse].
  /// [ruleGroupName] The managed rule group for exclusion.
  /// [rules] List of rules that will be excluded. If none specified, all rules in the group will be excluded.
  const ExclusionManagedRuleGroupResponse({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExclusionManagedRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExclusionManagedRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleGroupResponse(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExclusionManagedRuleResponse>(guardedValue, (value) => ExclusionManagedRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
