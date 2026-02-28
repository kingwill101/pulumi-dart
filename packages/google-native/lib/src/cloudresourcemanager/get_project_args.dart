// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_get_project_args_doc}
class GetProjectArgs {
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectArgs].
  /// [project] Optional.
  GetProjectArgs({
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

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
