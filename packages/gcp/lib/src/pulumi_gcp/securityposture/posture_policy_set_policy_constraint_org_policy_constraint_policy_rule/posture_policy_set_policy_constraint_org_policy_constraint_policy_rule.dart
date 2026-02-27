// ignore_for_file: unused_element, unnecessary_cast

import '../posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_condition/posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_condition.dart';
import '../posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_values/posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_values.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule {
  /// Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  final bool? allowAll;

  /// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// This page details the objects and attributes that are used to the build the CEL expressions for
  /// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleCondition?
      condition;

  /// Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  final bool? denyAll;

  /// If `true`, then the policy is enforced. If `false`, then any configuration is acceptable.
  /// This field can be set only in policies for boolean constraints.
  final bool? enforce;

  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues?
      values;

  PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllValue = allowAll;
    if (allowAllValue != null) {
      map['allowAll'] = allowAllValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    final denyAllValue = denyAll;
    if (denyAllValue != null) {
      map['denyAll'] = denyAllValue;
    }
    final enforceValue = enforce;
    if (enforceValue != null) {
      map['enforce'] = enforceValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue.toMap();
    }
    return map;
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule(
      allowAll: map['allowAll'] == null ? null : map['allowAll'] as bool,
      condition: map['condition'] == null
          ? null
          : PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleCondition
              .fromMap((map['condition'] as Map).cast<String, dynamic>()),
      denyAll: map['denyAll'] == null ? null : map['denyAll'] as bool,
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      values: map['values'] == null
          ? null
          : PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues
              .fromMap((map['values'] as Map).cast<String, dynamic>()),
    );
  }
}
