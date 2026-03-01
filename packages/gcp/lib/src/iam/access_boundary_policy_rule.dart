// ignore_for_file: unused_element, unnecessary_cast

import 'access_boundary_policy_rule_access_boundary_rule.dart';

class AccessBoundaryPolicyRule {
  /// An access boundary rule in an IAM policy.
  /// Structure is documented below.
  final AccessBoundaryPolicyRuleAccessBoundaryRule? accessBoundaryRule;
  /// The description of the rule.
  final String? description;

  /// Creates a new [AccessBoundaryPolicyRule].
  /// [accessBoundaryRule] An access boundary rule in an IAM policy.
  /// [description] The description of the rule.
  AccessBoundaryPolicyRule({
    this.accessBoundaryRule,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBoundaryRule': ?accessBoundaryRule == null ? null : accessBoundaryRule!.toMap(),
      'description': ?description,
    };
  }

  factory AccessBoundaryPolicyRule.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyRule(
      accessBoundaryRule: map['accessBoundaryRule'] == null ? null : AccessBoundaryPolicyRuleAccessBoundaryRule.fromMap((map['accessBoundaryRule'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

