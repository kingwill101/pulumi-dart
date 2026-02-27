// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProject.
class GetProjectCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String>? project;

  GetProjectCloudresourcemanagerV1beta1Args({
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

  factory GetProjectCloudresourcemanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV1beta1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
