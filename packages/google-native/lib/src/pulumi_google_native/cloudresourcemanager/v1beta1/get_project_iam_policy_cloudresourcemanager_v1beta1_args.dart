// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectIamPolicy.
class GetProjectIamPolicyCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String> resource;

  GetProjectIamPolicyCloudresourcemanagerV1beta1Args({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    return map;
  }

  factory GetProjectIamPolicyCloudresourcemanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetProjectIamPolicyCloudresourcemanagerV1beta1Args(
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}
