// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFleet.
class GetFleetArgs {
  final Input<String> fleetId;
  final Input<String> location;
  final Input<String>? project;

  GetFleetArgs({
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

  factory GetFleetArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetArgs(
      fleetId: Input.asInput<String>(map['fleetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
