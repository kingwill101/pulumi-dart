// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFleet.
class GetFleetGkehubV1betaArgs {
  final pulumi.Input<String> fleetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFleetGkehubV1betaArgs({
    required this.fleetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fleetId'] = fleetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFleetGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetGkehubV1betaArgs(
      fleetId: pulumi.Input.asInput<String>(map['fleetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
