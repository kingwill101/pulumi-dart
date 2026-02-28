// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_ancestry_get_ancestry_args_doc}
/// Arguments for getAncestry.
/// {@endtemplate}
/// {@macro pulumi_projects_get_ancestry_get_ancestry_args_doc}
class GetAncestryArgs {
  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAncestryArgs].
  /// [project] The ID of the project. If it is not provided, the provider project is used.
  GetAncestryArgs({
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

  factory GetAncestryArgs.fromMap(Map<String, dynamic> map) {
    return GetAncestryArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
