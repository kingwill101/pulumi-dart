// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_locations_get_locations_args_doc}
/// Arguments for getLocations.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_locations_get_locations_args_doc}
class GetLocationsArgs {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetLocationsArgs].
  /// [project] The project to list versions for. If it
  GetLocationsArgs({String? project})
    : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project};
  }

  factory GetLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationsArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
