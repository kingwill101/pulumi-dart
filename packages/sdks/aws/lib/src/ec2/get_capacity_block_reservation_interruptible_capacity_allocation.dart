// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCapacityBlockReservationInterruptibleCapacityAllocation {
  /// Number of instances allocated as interruptible capacity within the Capacity Block reservation.
  final pulumi.Input<int> instanceCount;
  /// ID of the interruptible Capacity Reservation associated with this allocation.
  final pulumi.Input<String> interruptibleCapacityReservationId;
  /// Type of interruption that occurred. Either `spot-interruption` or `capacity-block-interruption`.
  final pulumi.Input<String> interruptionType;
  /// Status of the interruptible capacity allocation. One of `pending`, `confirmed`, or `cancelled`.
  final pulumi.Input<String> status;
  /// Target number of interruptible instances for the allocation.
  final pulumi.Input<int> targetInstanceCount;

  /// Creates a new [GetCapacityBlockReservationInterruptibleCapacityAllocation].
  /// [instanceCount] Number of instances allocated as interruptible capacity within the Capacity Block reservation.
  /// [interruptibleCapacityReservationId] ID of the interruptible Capacity Reservation associated with this allocation.
  /// [interruptionType] Type of interruption that occurred. Either `spot-interruption` or `capacity-block-interruption`.
  /// [status] Status of the interruptible capacity allocation. One of `pending`, `confirmed`, or `cancelled`.
  /// [targetInstanceCount] Target number of interruptible instances for the allocation.
  const GetCapacityBlockReservationInterruptibleCapacityAllocation({
    required this.instanceCount,
    required this.interruptibleCapacityReservationId,
    required this.interruptionType,
    required this.status,
    required this.targetInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'interruptibleCapacityReservationId': interruptibleCapacityReservationId,
      'interruptionType': interruptionType,
      'status': status,
      'targetInstanceCount': targetInstanceCount,
    };
  }

  factory GetCapacityBlockReservationInterruptibleCapacityAllocation.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationInterruptibleCapacityAllocation(
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      interruptibleCapacityReservationId: pulumi.Input.fromValue(map['interruptibleCapacityReservationId'] as String),
      interruptionType: pulumi.Input.fromValue(map['interruptionType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetInstanceCount: pulumi.Input.fromValue(map['targetInstanceCount'] as int),
    );
  }
}
