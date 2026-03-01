// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_interconnect_locations_get_interconnect_locations_args_doc}
/// Arguments for getInterconnectLocations.
/// {@endtemplate}
/// {@macro pulumi_compute_get_interconnect_locations_get_interconnect_locations_args_doc}
class GetInterconnectLocationsArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectLocationsArgs].
  /// [project] The project in which the resource belongs. If it
  GetInterconnectLocationsArgs({String? project})
    : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project};
  }

  factory GetInterconnectLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
