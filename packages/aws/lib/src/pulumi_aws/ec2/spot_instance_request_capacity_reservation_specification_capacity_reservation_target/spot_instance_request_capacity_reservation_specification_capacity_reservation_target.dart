// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  /// ID of the Capacity Reservation in which to run the instance.
  final String? capacityReservationId;

  /// ARN of the Capacity Reservation resource group in which to run the instance.
  final String? capacityReservationResourceGroupArn;

  SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityReservationIdValue = capacityReservationId;
    if (capacityReservationIdValue != null) {
      map['capacityReservationId'] = capacityReservationIdValue;
    }
    final capacityReservationResourceGroupArnValue =
        capacityReservationResourceGroupArn;
    if (capacityReservationResourceGroupArnValue != null) {
      map['capacityReservationResourceGroupArn'] =
          capacityReservationResourceGroupArnValue;
    }
    return map;
  }

  factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.fromMap(
      Map<String, dynamic> map) {
    return SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationId: map['capacityReservationId'] == null
          ? null
          : map['capacityReservationId'] as String,
      capacityReservationResourceGroupArn:
          map['capacityReservationResourceGroupArn'] == null
              ? null
              : map['capacityReservationResourceGroupArn'] as String,
    );
  }
}
