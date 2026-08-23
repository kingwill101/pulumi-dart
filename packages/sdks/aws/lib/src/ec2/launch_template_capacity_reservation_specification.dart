// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class LaunchTemplateCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, `open` or `none`. If `capacityReservationId` or `capacityReservationResourceGroupArn` is specified in `capacityReservationTarget` block, either omit `capacityReservationPreference` or set it to `capacity-reservations-only`.
  final pulumi.Input<String>? capacityReservationPreference;
  /// Used to target a specific Capacity Reservation:
  final pulumi.Input<LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>? capacityReservationTarget;

  /// Creates a new [LaunchTemplateCapacityReservationSpecification].
  /// [capacityReservationPreference] Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, `open` or `none`. If `capacityReservationId` or `capacityReservationResourceGroupArn` is specified in `capacityReservationTarget` block, either omit `capacityReservationPreference` or set it to `capacity-reservations-only`.
  /// [capacityReservationTarget] Used to target a specific Capacity Reservation:
  const LaunchTemplateCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference,
      'capacityReservationTarget': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget, Map<String, dynamic>>(capacityReservationTarget, (value) => value.toMap()),
    };
  }

  factory LaunchTemplateCapacityReservationSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateCapacityReservationSpecification(
      capacityReservationPreference: (() { final guardedValue = map['capacityReservationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationTarget: (() { final guardedValue = map['capacityReservationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
