// ignore_for_file: unused_element, unnecessary_cast

class GroupCapacityReservationSpecificationCapacityReservationTarget {
  /// List of On-Demand Capacity Reservation Ids. Conflicts with `capacity_reservation_resource_group_arns`.
  final List<String>? capacityReservationIds;

  /// List of On-Demand Capacity Reservation Resource Group Arns. Conflicts with `capacity_reservation_ids`.
  final List<String>? capacityReservationResourceGroupArns;

  GroupCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationIds,
    this.capacityReservationResourceGroupArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityReservationIdsValue = capacityReservationIds;
    if (capacityReservationIdsValue != null) {
      map['capacityReservationIds'] = capacityReservationIdsValue;
    }
    final capacityReservationResourceGroupArnsValue =
        capacityReservationResourceGroupArns;
    if (capacityReservationResourceGroupArnsValue != null) {
      map['capacityReservationResourceGroupArns'] =
          capacityReservationResourceGroupArnsValue;
    }
    return map;
  }

  factory GroupCapacityReservationSpecificationCapacityReservationTarget.fromMap(
      Map<String, dynamic> map) {
    return GroupCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationIds: map['capacityReservationIds'] == null
          ? null
          : (map['capacityReservationIds'] as List).cast<String>(),
      capacityReservationResourceGroupArns:
          map['capacityReservationResourceGroupArns'] == null
              ? null
              : (map['capacityReservationResourceGroupArns'] as List)
                  .cast<String>(),
    );
  }
}
