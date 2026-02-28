// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_org_policy_constraint_policy_rule.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraint {
  /// Organization policy canned constraint Id
  final String cannedConstraintId;

  /// Definition of policy rules
  /// Structure is documented below.
  final List<PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule>
      policyRules;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraint].
  /// [cannedConstraintId] Organization policy canned constraint Id
  /// [policyRules] Definition of policy rules
  PosturePolicySetPolicyConstraintOrgPolicyConstraint({
    required this.cannedConstraintId,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cannedConstraintId'] = cannedConstraintId;
    map['policyRules'] = pulumi.Input.encodeList<
        PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule,
        Map<String, dynamic>>(policyRules, (value) => value.toMap());
    return map;
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraint.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraint(
      cannedConstraintId: map['cannedConstraintId'] as String,
      policyRules: pulumi.Input.decodeList<
              PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule>(
          map['policyRules'],
          (value) =>
              PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
