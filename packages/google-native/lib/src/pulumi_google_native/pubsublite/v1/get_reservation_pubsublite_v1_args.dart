// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReservation.
class GetReservationPubsubliteV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservationId;

  GetReservationPubsubliteV1Args({
    required this.location,
    this.project,
    required this.reservationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservationId'] = reservationId;
    return map;
  }

  factory GetReservationPubsubliteV1Args.fromMap(Map<String, dynamic> map) {
    return GetReservationPubsubliteV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationId: pulumi.Input.asInput<String>(map['reservationId']),
    );
  }
}
