// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget {
  final String capacityReservationId;
  final String capacityReservationResourceGroupArn;

  /// Creates a new [GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationId] Required.
  /// [capacityReservationResourceGroupArn] Required.
  GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget({
    required this.capacityReservationId,
    required this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': capacityReservationId,
      'capacityReservationResourceGroupArn':
          capacityReservationResourceGroupArn,
    };
  }

  factory GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationId: map['capacityReservationId'] as String,
      capacityReservationResourceGroupArn:
          map['capacityReservationResourceGroupArn'] as String,
    );
  }
}
