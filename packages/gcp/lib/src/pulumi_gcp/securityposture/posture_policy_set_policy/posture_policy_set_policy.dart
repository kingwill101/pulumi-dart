// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../posture_policy_set_policy_compliance_standard/posture_policy_set_policy_compliance_standard.dart';
import '../posture_policy_set_policy_constraint/posture_policy_set_policy_constraint.dart';

class PosturePolicySetPolicy {
  /// Mapping for policy to security standards and controls.
  /// Structure is documented below.
  final List<PosturePolicySetPolicyComplianceStandard>? complianceStandards;

  /// Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraint constraint;

  /// Description of the policy.
  final String? description;

  /// ID of the policy.
  final String policyId;

  PosturePolicySetPolicy({
    this.complianceStandards,
    required this.constraint,
    this.description,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complianceStandardsValue = complianceStandards;
    if (complianceStandardsValue != null) {
      map['complianceStandards'] = pulumi.Input.encodeList<
              PosturePolicySetPolicyComplianceStandard, Map<String, dynamic>>(
          complianceStandardsValue, (value) => value.toMap());
    }
    map['constraint'] = constraint.toMap();
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['policyId'] = policyId;
    return map;
  }

  factory PosturePolicySetPolicy.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicy(
      complianceStandards: map['complianceStandards'] == null
          ? null
          : pulumi.Input.decodeList<PosturePolicySetPolicyComplianceStandard>(
              map['complianceStandards'],
              (value) => PosturePolicySetPolicyComplianceStandard.fromMap(
                  (value as Map).cast<String, dynamic>())),
      constraint: PosturePolicySetPolicyConstraint.fromMap(
          (map['constraint'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      policyId: map['policyId'] as String,
    );
  }
}
