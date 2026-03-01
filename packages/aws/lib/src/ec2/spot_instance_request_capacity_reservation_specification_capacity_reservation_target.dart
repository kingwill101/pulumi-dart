// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget {
  /// ID of the Capacity Reservation in which to run the instance.
  final String? capacityReservationId;

  /// ARN of the Capacity Reservation resource group in which to run the instance.
  final String? capacityReservationResourceGroupArn;

  /// Creates a new [SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationId] ID of the Capacity Reservation in which to run the instance.
  /// [capacityReservationResourceGroupArn] ARN of the Capacity Reservation resource group in which to run the instance.
  SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationResourceGroupArn':
          ?capacityReservationResourceGroupArn,
    };
  }

  factory SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.fromMap(
    Map<String, dynamic> map,
  ) {
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
