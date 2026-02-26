// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProjectMetadataItem.
class ProjectMetadataItemArgs {
  /// The metadata key to set.
  final Input<String> key;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The value to set for the given metadata key.
  ///
  /// - - -
  final Input<String> value;

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
      key: Input.asInput<String>(map['key']),
      project: Input.asOptionalInput<String>(map['project']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
