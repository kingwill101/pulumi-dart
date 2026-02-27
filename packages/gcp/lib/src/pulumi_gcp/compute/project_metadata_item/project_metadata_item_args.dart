// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProjectMetadataItem.
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

  ProjectMetadataItemArgs({
    required this.key,
    this.project,
    required this.value,
  });

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
      key: pulumi.Input.asInput<String>(map['key']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
