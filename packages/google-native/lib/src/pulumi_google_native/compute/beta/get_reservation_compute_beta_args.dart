// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReservation.
class GetReservationComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservation;
  final pulumi.Input<String> zone;

  GetReservationComputeBetaArgs({
    this.project,
    required this.reservation,
    required this.zone,
  });

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

  factory GetReservationComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservation: pulumi.Input.asInput<String>(map['reservation']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
