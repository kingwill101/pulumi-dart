// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_future_reservation_compute_beta_args_doc}
/// Arguments for getFutureReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_future_reservation_compute_beta_args_doc}
class GetFutureReservationComputeBetaArgs {
  final pulumi.Input<String> futureReservation;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetFutureReservationComputeBetaArgs].
  /// [futureReservation] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetFutureReservationComputeBetaArgs({
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

  factory GetFutureReservationComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFutureReservationComputeBetaArgs(
      futureReservation: map['futureReservation'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

