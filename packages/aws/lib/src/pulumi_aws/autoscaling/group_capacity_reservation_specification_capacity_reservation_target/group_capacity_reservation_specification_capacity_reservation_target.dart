// ignore_for_file: unused_element, unnecessary_cast

class GroupCapacityReservationSpecificationCapacityReservationTarget {
  /// List of On-Demand Capacity Reservation Ids. Conflicts with <span pulumi-lang-nodejs="`capacityReservationResourceGroupArns`" pulumi-lang-dotnet="`CapacityReservationResourceGroupArns`" pulumi-lang-go="`capacityReservationResourceGroupArns`" pulumi-lang-python="`capacity_reservation_resource_group_arns`" pulumi-lang-yaml="`capacityReservationResourceGroupArns`" pulumi-lang-java="`capacityReservationResourceGroupArns`">`capacity_reservation_resource_group_arns`</span>.
  final List<String>? capacityReservationIds;

  /// List of On-Demand Capacity Reservation Resource Group Arns. Conflicts with <span pulumi-lang-nodejs="`capacityReservationIds`" pulumi-lang-dotnet="`CapacityReservationIds`" pulumi-lang-go="`capacityReservationIds`" pulumi-lang-python="`capacity_reservation_ids`" pulumi-lang-yaml="`capacityReservationIds`" pulumi-lang-java="`capacityReservationIds`">`capacity_reservation_ids`</span>.
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
