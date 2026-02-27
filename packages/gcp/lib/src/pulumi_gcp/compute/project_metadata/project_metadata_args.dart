// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProjectMetadata.
class ProjectMetadataArgs {
  /// A series of key value pairs.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>> metadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ProjectMetadataArgs({
    required this.metadata,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadata'] = metadata;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectMetadataArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataArgs(
      metadata: pulumi.Input.asInput<Map<String, String>>(map['metadata']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
