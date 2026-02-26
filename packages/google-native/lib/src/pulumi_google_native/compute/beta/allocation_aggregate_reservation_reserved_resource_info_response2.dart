// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response2.dart';

class AllocationAggregateReservationReservedResourceInfoResponse2 {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAcceleratorResponse2
      accelerator;

  AllocationAggregateReservationReservedResourceInfoResponse2({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator.toMap();
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfoResponse2.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoResponse2(
      accelerator:
          AllocationAggregateReservationReservedResourceInfoAcceleratorResponse2
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
