// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFutureReservation.
class GetFutureReservationComputeBetaArgs {
  final pulumi.Input<String> futureReservation;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetFutureReservationComputeBetaArgs({
    required this.futureReservation,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['futureReservation'] = futureReservation;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetFutureReservationComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFutureReservationComputeBetaArgs(
      futureReservation: pulumi.Input.asInput<String>(map['futureReservation']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
