// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../posture_policy_set_policy_constraint_org_policy_constraint_custom_custom_constraint/posture_policy_set_policy_constraint_org_policy_constraint_custom_custom_constraint.dart';
import '../posture_policy_set_policy_constraint_org_policy_constraint_custom_policy_rule/posture_policy_set_policy_constraint_org_policy_constraint_custom_policy_rule.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom {
  /// Organization policy custom constraint definition.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint?
      customConstraint;

  /// Definition of policy rules
  /// Structure is documented below.
  final List<
          PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule>
      policyRules;

  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom({
    this.customConstraint,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConstraintValue = customConstraint;
    if (customConstraintValue != null) {
      map['customConstraint'] = customConstraintValue.toMap();
    }
    map['policyRules'] = pulumi.Input.encodeList<
        PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule,
        Map<String, dynamic>>(policyRules, (value) => value.toMap());
    return map;
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom(
      customConstraint: map['customConstraint'] == null
          ? null
          : PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint
              .fromMap(
                  (map['customConstraint'] as Map).cast<String, dynamic>()),
      policyRules: pulumi.Input.decodeList<
              PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule>(
          map['policyRules'],
          (value) =>
              PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
