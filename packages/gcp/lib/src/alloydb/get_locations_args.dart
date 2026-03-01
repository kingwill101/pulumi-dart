// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_get_locations_get_locations_args_doc}
/// Arguments for getLocations.
/// {@endtemplate}
/// {@macro pulumi_alloydb_get_locations_get_locations_args_doc}
class GetLocationsArgs {
  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetLocationsArgs].
  /// [project] The ID of the project.
  GetLocationsArgs({
    String? project,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationsArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

