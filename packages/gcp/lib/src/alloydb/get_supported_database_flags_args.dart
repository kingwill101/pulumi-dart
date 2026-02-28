// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_get_supported_database_flags_get_supported_database_flags_args_doc}
/// Arguments for getSupportedDatabaseFlags.
/// {@endtemplate}
/// {@macro pulumi_alloydb_get_supported_database_flags_get_supported_database_flags_args_doc}
class GetSupportedDatabaseFlagsArgs {
  /// The canonical id of the location. For example: `us-east1`.
  final pulumi.Input<String> location;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSupportedDatabaseFlagsArgs].
  /// [location] The canonical id of the location. For example: `us-east1`.
  /// [project] The ID of the project.
  GetSupportedDatabaseFlagsArgs({
    required String location,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
