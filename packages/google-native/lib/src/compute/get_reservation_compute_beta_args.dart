// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_reservation_compute_beta_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_reservation_compute_beta_args_doc}
class GetReservationComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservation;
  final pulumi.Input<String> zone;

  /// Creates a new [GetReservationComputeBetaArgs].
  /// [project] Optional.
  /// [reservation] Required.
  /// [zone] Required.
  GetReservationComputeBetaArgs({
    String? project,
    required String reservation,
    required String zone,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      reservation = pulumi.Input.asInput<String>(reservation),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'reservation': reservation,
      'zone': zone,
    };
  }

  factory GetReservationComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      reservation: map['reservation'] as String,
      zone: map['zone'] as String,
    );
  }
}

