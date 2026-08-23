// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCapacityBlockReservationInterruptionInfo {
  /// Type of interruption that occurred. Either `spot-interruption` or `capacity-block-interruption`.
  final pulumi.Input<String> interruptionType;
  /// ID of the source Capacity Reservation that originally held the capacity, if the reservation was created as a result of an interruption.
  final pulumi.Input<String> sourceCapacityReservationId;

  /// Creates a new [GetCapacityBlockReservationInterruptionInfo].
  /// [interruptionType] Type of interruption that occurred. Either `spot-interruption` or `capacity-block-interruption`.
  /// [sourceCapacityReservationId] ID of the source Capacity Reservation that originally held the capacity, if the reservation was created as a result of an interruption.
  const GetCapacityBlockReservationInterruptionInfo({
    required this.interruptionType,
    required this.sourceCapacityReservationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interruptionType': interruptionType,
      'sourceCapacityReservationId': sourceCapacityReservationId,
    };
  }

  factory GetCapacityBlockReservationInterruptionInfo.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationInterruptionInfo(
      interruptionType: pulumi.Input.fromValue(map['interruptionType'] as String),
      sourceCapacityReservationId: pulumi.Input.fromValue(map['sourceCapacityReservationId'] as String),
    );
  }
}
