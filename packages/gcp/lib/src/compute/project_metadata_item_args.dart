// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_metadata_item_project_metadata_item_args_doc}
/// The set of arguments for ProjectMetadataItem.
/// {@endtemplate}
/// {@macro pulumi_compute_project_metadata_item_project_metadata_item_args_doc}
class ProjectMetadataItemArgs {
  /// The metadata key to set.
  final pulumi.Input<String> key;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The value to set for the given metadata key.
  ///
  /// - - -
  final pulumi.Input<String> value;

  /// Creates a new [ProjectMetadataItemArgs].
  /// [key] The metadata key to set.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [value] The value to set for the given metadata key.
  ProjectMetadataItemArgs({
    required String key,
    String? project,
    required String value,
  })  : key = pulumi.Input.asInput<String>(key),
        project = pulumi.Input.asOptionalInput<String>(project),
        value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['value'] = value;
    return map;
  }

  factory ProjectMetadataItemArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataItemArgs(
      key: map['key'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      value: map['value'] as String,
    );
  }
}
