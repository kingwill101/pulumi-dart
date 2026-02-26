// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response.dart';

class AllocationAggregateReservationReservedResourceInfoResponse {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAcceleratorResponse
      accelerator;

  AllocationAggregateReservationReservedResourceInfoResponse({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator.toMap();
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoResponse(
      accelerator:
          AllocationAggregateReservationReservedResourceInfoAcceleratorResponse
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
