// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSupportedDatabaseFlags.
class GetSupportedDatabaseFlagsArgs {
  /// The canonical id of the location. For example: `us-east1`.
  final pulumi.Input<String> location;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  GetSupportedDatabaseFlagsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetSupportedDatabaseFlagsArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
