// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsublite_v1_get_reservation_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_get_reservation_args_doc}
class GetReservationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservationId;

  /// Creates a new [GetReservationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [reservationId] Required.
  GetReservationArgs({
    required String location,
    String? project,
    required String reservationId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservationId = pulumi.Input.asInput<String>(reservationId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservationId: map['reservationId'] as String,
    );
  }
}
