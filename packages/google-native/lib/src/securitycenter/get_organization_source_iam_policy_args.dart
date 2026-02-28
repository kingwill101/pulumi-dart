// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
/// Arguments for getOrganizationSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
class GetOrganizationSourceIamPolicyArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetOrganizationSourceIamPolicyArgs].
  /// [organizationId] Required.
  /// [sourceId] Required.
  GetOrganizationSourceIamPolicyArgs({
    required String organizationId,
    required String sourceId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId),
      sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sourceId': sourceId,
    };
  }

  factory GetOrganizationSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSourceIamPolicyArgs(
      organizationId: map['organizationId'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}

