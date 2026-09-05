// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCapacityReservationSpecificationCapacityReservationTarget {
  /// ID of the Capacity Reservation in which to run the instance.
  final pulumi.Input<String?>? capacityReservationId;
  /// ARN of the Capacity Reservation resource group in which to run the instance.
  final pulumi.Input<String?>? capacityReservationResourceGroupArn;

  /// Creates a new [InstanceCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationId] ID of the Capacity Reservation in which to run the instance.
  /// [capacityReservationResourceGroupArn] ARN of the Capacity Reservation resource group in which to run the instance.
  const InstanceCapacityReservationSpecificationCapacityReservationTarget({
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
      capacityReservationId: (() { final guardedValue = map['capacityReservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationResourceGroupArn: (() { final guardedValue = map['capacityReservationResourceGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
