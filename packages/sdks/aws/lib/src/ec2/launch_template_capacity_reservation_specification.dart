// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class LaunchTemplateCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, `open` or `none`. If `capacity_reservation_id` or `capacity_reservation_resource_group_arn` is specified in `capacity_reservation_target` block, either omit `capacity_reservation_preference` or set it to `capacity-reservations-only`.
  final pulumi.Input<String>? capacityReservationPreference;
  /// Used to target a specific Capacity Reservation:
  final pulumi.Input<LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>? capacityReservationTarget;

  /// Creates a new [LaunchTemplateCapacityReservationSpecification].
  /// [capacityReservationPreference] Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, `open` or `none`. If `capacity_reservation_id` or `capacity_reservation_resource_group_arn` is specified in `capacity_reservation_target` block, either omit `capacity_reservation_preference` or set it to `capacity-reservations-only`.
  /// [capacityReservationTarget] Used to target a specific Capacity Reservation:
  LaunchTemplateCapacityReservationSpecification({
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
      capacityReservationPreference: map['capacityReservationPreference'] == null ? null : ((map['capacityReservationPreference'] as String).input()).input(),
      capacityReservationTarget: map['capacityReservationTarget'] == null ? null : ((LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap((map['capacityReservationTarget']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

