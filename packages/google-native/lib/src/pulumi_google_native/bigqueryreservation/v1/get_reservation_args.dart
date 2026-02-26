// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservation.
class GetReservationArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> reservationId;

  GetReservationArgs({
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

  factory GetReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationId: Input.asInput<String>(map['reservationId']),
    );
  }
}
