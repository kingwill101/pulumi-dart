// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReservation.
class GetReservationArgs4 {
  final Input<String>? project;
  final Input<String> reservation;
  final Input<String> zone;

  GetReservationArgs4({
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

  factory GetReservationArgs4.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs4(
      project: Input.asOptionalInput<String>(map['project']),
      reservation: Input.asInput<String>(map['reservation']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
