// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator2.dart';

class AllocationAggregateReservationReservedResourceInfo2 {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAccelerator2?
      accelerator;

  AllocationAggregateReservationReservedResourceInfo2({
    this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorValue = accelerator;
    if (acceleratorValue != null) {
      map['accelerator'] = acceleratorValue.toMap();
    }
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfo2.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfo2(
      accelerator: map['accelerator'] == null
          ? null
          : AllocationAggregateReservationReservedResourceInfoAccelerator2
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
