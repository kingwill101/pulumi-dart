// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCapacityReservationSpecificationCapacityReservationTarget {
  /// ID of the Capacity Reservation in which to run the instance.
  final pulumi.Input<String>? capacityReservationId;
  /// ARN of the Capacity Reservation resource group in which to run the instance.
  final pulumi.Input<String>? capacityReservationResourceGroupArn;

  /// Creates a new [InstanceCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationId] ID of the Capacity Reservation in which to run the instance.
  /// [capacityReservationResourceGroupArn] ARN of the Capacity Reservation resource group in which to run the instance.
  InstanceCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationId,
    this.capacityReservationResourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': ?capacityReservationId,
      'capacityReservationResourceGroupArn': ?capacityReservationResourceGroupArn,
    };
  }

  factory InstanceCapacityReservationSpecificationCapacityReservationTarget.fromMap(Map<String, dynamic> map) {
    return InstanceCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationId: map['capacityReservationId'] == null ? null : (map['capacityReservationId'] as String).input(),
      capacityReservationResourceGroupArn: map['capacityReservationResourceGroupArn'] == null ? null : (map['capacityReservationResourceGroupArn'] as String).input(),
    );
  }
}

