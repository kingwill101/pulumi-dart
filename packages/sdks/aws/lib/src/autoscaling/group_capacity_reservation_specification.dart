// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_capacity_reservation_specification_capacity_reservation_target.dart';

class GroupCapacityReservationSpecification {
  /// Capacity Reservation preference helps you use Capacity Reservations efficiently by prioritizing reserved capacity in a Capacity Reservation before using On-Demand capacity. Valid values are `default`, `capacity-reservations-only`, `capacity-reservations-first` and `none`. Default is `default`.
  final pulumi.Input<String>? capacityReservationPreference;
  /// Describes a target Capacity Reservation or Capacity Reservation resource group.
  final pulumi.Input<GroupCapacityReservationSpecificationCapacityReservationTarget>? capacityReservationTarget;

  /// Creates a new [GroupCapacityReservationSpecification].
  /// [capacityReservationPreference] Capacity Reservation preference helps you use Capacity Reservations efficiently by prioritizing reserved capacity in a Capacity Reservation before using On-Demand capacity. Valid values are `default`, `capacity-reservations-only`, `capacity-reservations-first` and `none`. Default is `default`.
  /// [capacityReservationTarget] Describes a target Capacity Reservation or Capacity Reservation resource group.
  const GroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference,
      'capacityReservationTarget': ?pulumi.Input.mapOptionalInputValue<GroupCapacityReservationSpecificationCapacityReservationTarget, Map<String, dynamic>>(capacityReservationTarget, (value) => value.toMap()),
    };
  }

  factory GroupCapacityReservationSpecification.fromMap(Map<String, dynamic> map) {
    return GroupCapacityReservationSpecification(
      capacityReservationPreference: (() { final guardedValue = map['capacityReservationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationTarget: (() { final guardedValue = map['capacityReservationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupCapacityReservationSpecificationCapacityReservationTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
