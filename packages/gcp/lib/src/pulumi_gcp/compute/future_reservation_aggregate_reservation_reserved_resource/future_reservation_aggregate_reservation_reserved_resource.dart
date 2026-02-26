// ignore_for_file: unused_element, unnecessary_cast

import '../future_reservation_aggregate_reservation_reserved_resource_accelerator/future_reservation_aggregate_reservation_reserved_resource_accelerator.dart';

class FutureReservationAggregateReservationReservedResource {
  /// Properties of accelerator resources in this reservation.
  /// Structure is documented below.
  final FutureReservationAggregateReservationReservedResourceAccelerator?
      accelerator;

  FutureReservationAggregateReservationReservedResource({
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

  factory FutureReservationAggregateReservationReservedResource.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationAggregateReservationReservedResource(
      accelerator: map['accelerator'] == null
          ? null
          : FutureReservationAggregateReservationReservedResourceAccelerator
              .fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}
