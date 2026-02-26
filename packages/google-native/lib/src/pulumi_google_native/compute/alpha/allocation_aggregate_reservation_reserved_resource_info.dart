// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator.dart';

class AllocationAggregateReservationReservedResourceInfo {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAccelerator?
      accelerator;

  AllocationAggregateReservationReservedResourceInfo({
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

  factory AllocationAggregateReservationReservedResourceInfo.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfo(
      accelerator: map['accelerator'] == null
          ? null
          : AllocationAggregateReservationReservedResourceInfoAccelerator
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
