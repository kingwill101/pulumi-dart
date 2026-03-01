// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1beta1_get_organization_source_iam_policy_securitycenter_v1beta1_args_doc}
/// Arguments for getOrganizationSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1beta1_get_organization_source_iam_policy_securitycenter_v1beta1_args_doc}
class GetOrganizationSourceIamPolicySecuritycenterV1beta1Args {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetOrganizationSourceIamPolicySecuritycenterV1beta1Args].
  /// [organizationId] Required.
  /// [sourceId] Required.
  GetOrganizationSourceIamPolicySecuritycenterV1beta1Args({
    required String organizationId,
    required String sourceId,
  }) : organizationId = pulumi.Input.asInput<String>(organizationId),
       sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sourceId': sourceId,
    };
  }

  factory GetOrganizationSourceIamPolicySecuritycenterV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationSourceIamPolicySecuritycenterV1beta1Args(
      organizationId: map['organizationId'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
