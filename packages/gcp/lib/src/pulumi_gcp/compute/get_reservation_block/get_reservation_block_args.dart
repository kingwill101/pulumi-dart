// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservationBlock.
class GetReservationBlockArgs {
  /// The name of the reservation block.
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the parent reservation.
  ///
  /// - - -
  final Input<String> reservation;

  /// The zone where the reservation block resides.
  final Input<String>? zone;

  GetReservationBlockArgs({
    required this.name,
    this.project,
    required this.reservation,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservation'] = reservation;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetReservationBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      reservation: Input.asInput<String>(map['reservation']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
