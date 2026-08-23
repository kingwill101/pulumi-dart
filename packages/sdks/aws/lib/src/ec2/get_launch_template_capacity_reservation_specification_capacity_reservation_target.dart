// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget {
  final pulumi.Input<String> capacityReservationId;
  final pulumi.Input<String> capacityReservationResourceGroupArn;

  /// Creates a new [GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationId] Required.
  /// [capacityReservationResourceGroupArn] Required.
  const GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget({
    required this.capacityReservationId,
    required this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': capacityReservationId,
      'capacityReservationResourceGroupArn': capacityReservationResourceGroupArn,
    };
  }

  factory GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationId: pulumi.Input.fromValue(map['capacityReservationId'] as String),
      capacityReservationResourceGroupArn: pulumi.Input.fromValue(map['capacityReservationResourceGroupArn'] as String),
    );
  }
}
