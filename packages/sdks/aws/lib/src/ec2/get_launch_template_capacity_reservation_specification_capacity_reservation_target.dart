// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget {
  final pulumi.Input<String> capacityReservationId;
  final pulumi.Input<String> capacityReservationResourceGroupArn;

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
      'capacityReservationResourceGroupArn': capacityReservationResourceGroupArn,
    };
  }

  factory GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationId: (map['capacityReservationId'] as String).input(),
      capacityReservationResourceGroupArn: (map['capacityReservationResourceGroupArn'] as String).input(),
    );
  }
}

