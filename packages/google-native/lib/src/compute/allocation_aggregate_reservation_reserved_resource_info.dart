// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator.dart';

class AllocationAggregateReservationReservedResourceInfo {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAccelerator? accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfo].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfo({
    this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': ?accelerator == null ? null : accelerator!.toMap(),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfo.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfo(
      accelerator: map['accelerator'] == null ? null : AllocationAggregateReservationReservedResourceInfoAccelerator.fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}

