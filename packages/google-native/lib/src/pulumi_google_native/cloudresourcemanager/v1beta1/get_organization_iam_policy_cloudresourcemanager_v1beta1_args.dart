// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String> organizationId;

  GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
