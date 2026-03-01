// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_v2_get_organization_policy_args_doc}
/// Arguments for getOrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_get_organization_policy_args_doc}
class GetOrganizationPolicyArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> policyId;

  /// Creates a new [GetOrganizationPolicyArgs].
  /// [organizationId] Required.
  /// [policyId] Required.
  GetOrganizationPolicyArgs({
    required String organizationId,
    required String policyId,
  }) : organizationId = pulumi.Input.asInput<String>(organizationId),
       policyId = pulumi.Input.asInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'policyId': policyId,
    };
  }

  factory GetOrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs(
      organizationId: map['organizationId'] as String,
      policyId: map['policyId'] as String,
    );
  }
}
