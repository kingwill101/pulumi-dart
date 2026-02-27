// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Reservation.
class ReservationPubsubliteV1Args {
  final pulumi.Input<String>? location;

  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  final pulumi.Input<String> reservationId;

  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  final pulumi.Input<String>? throughputCapacity;

  ReservationPubsubliteV1Args({
    this.location,
    this.name,
    this.project,
    required this.reservationId,
    this.throughputCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservationId'] = reservationId;
    final throughputCapacityValue = throughputCapacity;
    if (throughputCapacityValue != null) {
      map['throughputCapacity'] = throughputCapacityValue;
    }
    return map;
  }

  factory ReservationPubsubliteV1Args.fromMap(Map<String, dynamic> map) {
    return ReservationPubsubliteV1Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationId: pulumi.Input.asInput<String>(map['reservationId']),
      throughputCapacity:
          pulumi.Input.asOptionalInput<String>(map['throughputCapacity']),
    );
  }
}
