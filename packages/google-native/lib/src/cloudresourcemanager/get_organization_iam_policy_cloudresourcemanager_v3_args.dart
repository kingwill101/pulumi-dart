// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_organization_iam_policy_cloudresourcemanager_v3_args_doc}
/// Arguments for getOrganizationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_organization_iam_policy_cloudresourcemanager_v3_args_doc}
class GetOrganizationIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationIamPolicyCloudresourcemanagerV3Args].
  /// [organizationId] Required.
  GetOrganizationIamPolicyCloudresourcemanagerV3Args({
    required String organizationId,
  }) : organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationIamPolicyCloudresourcemanagerV3Args(
      organizationId: map['organizationId'] as String,
    );
  }
}
