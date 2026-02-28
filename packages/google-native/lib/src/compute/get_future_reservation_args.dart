// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_future_reservation_args_doc}
/// Arguments for getFutureReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_future_reservation_args_doc}
class GetFutureReservationArgs {
  final pulumi.Input<String> futureReservation;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetFutureReservationArgs].
  /// [futureReservation] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetFutureReservationArgs({
    required String futureReservation,
    String? project,
    required String zone,
  }) :
      futureReservation = pulumi.Input.asInput<String>(futureReservation),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'futureReservation': futureReservation,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetFutureReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetFutureReservationArgs(
      futureReservation: map['futureReservation'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

