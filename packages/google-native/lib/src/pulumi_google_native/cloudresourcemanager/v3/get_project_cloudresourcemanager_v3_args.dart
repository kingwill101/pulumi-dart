// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProject.
class GetProjectCloudresourcemanagerV3Args {
  final pulumi.Input<String>? project;

  GetProjectCloudresourcemanagerV3Args({
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

  factory GetProjectCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV3Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
