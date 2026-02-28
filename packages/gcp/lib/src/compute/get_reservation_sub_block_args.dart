// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_reservation_sub_block_get_reservation_sub_block_args_doc}
/// Arguments for getReservationSubBlock.
/// {@endtemplate}
/// {@macro pulumi_compute_get_reservation_sub_block_get_reservation_sub_block_args_doc}
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

  /// Creates a new [GetReservationSubBlockArgs].
  /// [name] The name of the reservation sub-block.
  /// [project] The project in which the resource belongs. If it
  /// [reservation] The name of the parent reservation.
  /// [reservationBlock] The name of the parent reservation block.
  /// [zone] The zone where the reservation sub-block resides.
  GetReservationSubBlockArgs({
    required String name,
    String? project,
    required String reservation,
    required String reservationBlock,
    String? zone,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservation = pulumi.Input.asInput<String>(reservation),
        reservationBlock = pulumi.Input.asInput<String>(reservationBlock),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservation: map['reservation'] as String,
      reservationBlock: map['reservationBlock'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
