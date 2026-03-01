// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_fleet_gkehub_v1alpha_args_doc}
/// Arguments for getFleet.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_fleet_gkehub_v1alpha_args_doc}
class GetFleetGkehubV1alphaArgs {
  final pulumi.Input<String> fleetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFleetGkehubV1alphaArgs].
  /// [fleetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFleetGkehubV1alphaArgs({
    required String fleetId,
    required String location,
    String? project,
  }) : fleetId = pulumi.Input.asInput<String>(fleetId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetId': fleetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFleetGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetGkehubV1alphaArgs(
      fleetId: map['fleetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
