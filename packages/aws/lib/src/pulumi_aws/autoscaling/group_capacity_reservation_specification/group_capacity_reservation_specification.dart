// ignore_for_file: unused_element, unnecessary_cast

import '../group_capacity_reservation_specification_capacity_reservation_target/group_capacity_reservation_specification_capacity_reservation_target.dart';

class GroupCapacityReservationSpecification {
  /// Capacity Reservation preference helps you use Capacity Reservations efficiently by prioritizing reserved capacity in a Capacity Reservation before using On-Demand capacity. Valid values are <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, `capacity-reservations-only`, `capacity-reservations-first` and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. Default is <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final String? capacityReservationPreference;

  /// Describes a target Capacity Reservation or Capacity Reservation resource group.
  final GroupCapacityReservationSpecificationCapacityReservationTarget?
      capacityReservationTarget;

  GroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityReservationPreferenceValue = capacityReservationPreference;
    if (capacityReservationPreferenceValue != null) {
      map['capacityReservationPreference'] = capacityReservationPreferenceValue;
    }
    final capacityReservationTargetValue = capacityReservationTarget;
    if (capacityReservationTargetValue != null) {
      map['capacityReservationTarget'] = capacityReservationTargetValue.toMap();
    }
    return map;
  }

  factory GroupCapacityReservationSpecification.fromMap(
      Map<String, dynamic> map) {
    return GroupCapacityReservationSpecification(
      capacityReservationPreference:
          map['capacityReservationPreference'] == null
              ? null
              : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null
          ? null
          : GroupCapacityReservationSpecificationCapacityReservationTarget
              .fromMap((map['capacityReservationTarget'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
