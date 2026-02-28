// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_reservation_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_reservation_args_doc}
class GetReservationArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservation;
  final pulumi.Input<String> zone;

  /// Creates a new [GetReservationArgs].
  /// [project] Optional.
  /// [reservation] Required.
  /// [zone] Required.
  GetReservationArgs({
    String? project,
    required String reservation,
    required String zone,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        reservation = pulumi.Input.asInput<String>(reservation),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservation'] = reservation;
    map['zone'] = zone;
    return map;
  }

  factory GetReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs(
      project: map['project'] == null ? null : map['project'] as String,
      reservation: map['reservation'] as String,
      zone: map['zone'] as String,
    );
  }
}
