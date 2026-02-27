// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String> organizationId;

  GetOrganizationIamPolicyCloudresourcemanagerV3Args({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationIamPolicyCloudresourcemanagerV3Args(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
