// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReservationSubBlock.
class GetReservationSubBlockArgs {
  /// The name of the reservation sub-block.
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the parent reservation.
  ///
  /// - - -
  final pulumi.Input<String> reservation;

  /// The name of the parent reservation block.
  final pulumi.Input<String> reservationBlock;

  /// The zone where the reservation sub-block resides.
  final pulumi.Input<String>? zone;

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
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservation: pulumi.Input.asInput<String>(map['reservation']),
      reservationBlock: pulumi.Input.asInput<String>(map['reservationBlock']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
