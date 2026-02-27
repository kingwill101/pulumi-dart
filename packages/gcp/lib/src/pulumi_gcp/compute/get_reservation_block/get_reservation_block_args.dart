// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReservationBlock.
class GetReservationBlockArgs {
  /// The name of the reservation block.
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the parent reservation.
  ///
  /// - - -
  final pulumi.Input<String> reservation;

  /// The zone where the reservation block resides.
  final pulumi.Input<String>? zone;

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
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservation: pulumi.Input.asInput<String>(map['reservation']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
