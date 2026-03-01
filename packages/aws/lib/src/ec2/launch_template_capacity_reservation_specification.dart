// ignore_for_file: unused_element, unnecessary_cast

import 'launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class LaunchTemplateCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, `open` or `none`. If `capacity_reservation_id` or `capacity_reservation_resource_group_arn` is specified in `capacity_reservation_target` block, either omit `capacity_reservation_preference` or set it to `capacity-reservations-only`.
  final String? capacityReservationPreference;

  /// Used to target a specific Capacity Reservation:
  final LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget?
  capacityReservationTarget;

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
      'capacityReservationTarget': ?capacityReservationTarget == null
          ? null
          : capacityReservationTarget!.toMap(),
    };
  }

  factory LaunchTemplateCapacityReservationSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateCapacityReservationSpecification(
      capacityReservationPreference:
          map['capacityReservationPreference'] == null
          ? null
          : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null
          ? null
          : LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(
              (map['capacityReservationTarget'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
