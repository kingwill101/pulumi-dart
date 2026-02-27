// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectIamPolicy.
class GetProjectIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String>? project;

  GetProjectIamPolicyCloudresourcemanagerV3Args({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProjectIamPolicyCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetProjectIamPolicyCloudresourcemanagerV3Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
