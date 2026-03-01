// ignore_for_file: unused_element, unnecessary_cast

import 'group_capacity_reservation_specification_capacity_reservation_target.dart';

class GroupCapacityReservationSpecification {
  /// Capacity Reservation preference helps you use Capacity Reservations efficiently by prioritizing reserved capacity in a Capacity Reservation before using On-Demand capacity. Valid values are `default`, `capacity-reservations-only`, `capacity-reservations-first` and `none`. Default is `default`.
  final String? capacityReservationPreference;
  /// Describes a target Capacity Reservation or Capacity Reservation resource group.
  final GroupCapacityReservationSpecificationCapacityReservationTarget? capacityReservationTarget;

  /// Creates a new [GroupCapacityReservationSpecification].
  /// [capacityReservationPreference] Capacity Reservation preference helps you use Capacity Reservations efficiently by prioritizing reserved capacity in a Capacity Reservation before using On-Demand capacity. Valid values are `default`, `capacity-reservations-only`, `capacity-reservations-first` and `none`. Default is `default`.
  /// [capacityReservationTarget] Describes a target Capacity Reservation or Capacity Reservation resource group.
  GroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference,
      'capacityReservationTarget': ?capacityReservationTarget == null ? null : capacityReservationTarget!.toMap(),
    };
  }

  factory GroupCapacityReservationSpecification.fromMap(Map<String, dynamic> map) {
    return GroupCapacityReservationSpecification(
      capacityReservationPreference: map['capacityReservationPreference'] == null ? null : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null ? null : GroupCapacityReservationSpecificationCapacityReservationTarget.fromMap((map['capacityReservationTarget'] as Map).cast<String, dynamic>()),
    );
  }
}

