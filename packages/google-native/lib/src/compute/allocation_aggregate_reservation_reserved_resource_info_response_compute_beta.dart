// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response_compute_beta.dart';

class AllocationAggregateReservationReservedResourceInfoResponseComputeBeta {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta
      accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoResponseComputeBeta].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfoResponseComputeBeta({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator.toMap();
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfoResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoResponseComputeBeta(
      accelerator:
          AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
