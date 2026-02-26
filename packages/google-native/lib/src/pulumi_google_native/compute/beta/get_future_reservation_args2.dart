// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFutureReservation.
class GetFutureReservationArgs2 {
  final Input<String> futureReservation;
  final Input<String>? project;
  final Input<String> zone;

  GetFutureReservationArgs2({
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

  factory GetFutureReservationArgs2.fromMap(Map<String, dynamic> map) {
    return GetFutureReservationArgs2(
      futureReservation: Input.asInput<String>(map['futureReservation']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
