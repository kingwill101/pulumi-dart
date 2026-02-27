// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReservation.
class GetReservationArgs {
  /// The name of the Compute Reservation.
  final pulumi.Input<String> name;

  /// Project from which to list the Compute Reservation. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Zone where the Compute Reservation resides.
  final pulumi.Input<String> zone;

  GetReservationArgs({
    required this.name,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
