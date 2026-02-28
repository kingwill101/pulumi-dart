// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_project_cloudresourcemanager_v3_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_project_cloudresourcemanager_v3_args_doc}
class GetProjectCloudresourcemanagerV3Args {
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectCloudresourcemanagerV3Args].
  /// [project] Optional.
  GetProjectCloudresourcemanagerV3Args({
    String? project,
  }) : project = pulumi.Input.asOptionalInput<String>(project);

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
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
