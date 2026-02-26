// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservationSubBlock.
class GetReservationSubBlockArgs {
  /// The name of the reservation sub-block.
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the parent reservation.
  ///
  /// - - -
  final Input<String> reservation;

  /// The name of the parent reservation block.
  final Input<String> reservationBlock;

  /// The zone where the reservation sub-block resides.
  final Input<String>? zone;

  GetReservationSubBlockArgs({
    required this.name,
    this.project,
    required this.reservation,
    required this.reservationBlock,
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
    map['reservationBlock'] = reservationBlock;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetReservationSubBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      reservation: Input.asInput<String>(map['reservation']),
      reservationBlock: Input.asInput<String>(map['reservationBlock']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
