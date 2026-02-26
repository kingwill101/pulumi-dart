// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget {
  /// The ID of the Capacity Reservation in which to run the instance.
  final String? capacityReservationId;

  /// The ARN of the Capacity Reservation resource group in which to run the instance.
  final String? capacityReservationResourceGroupArn;

  LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget({
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

  factory LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget(
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
