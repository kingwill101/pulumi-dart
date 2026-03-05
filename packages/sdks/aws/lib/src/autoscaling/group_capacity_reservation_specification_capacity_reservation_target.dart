// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupCapacityReservationSpecificationCapacityReservationTarget {
  /// List of On-Demand Capacity Reservation Ids. Conflicts with `capacity_reservation_resource_group_arns`.
  final pulumi.Input<List<String>>? capacityReservationIds;
  /// List of On-Demand Capacity Reservation Resource Group Arns. Conflicts with `capacity_reservation_ids`.
  final pulumi.Input<List<String>>? capacityReservationResourceGroupArns;

  /// Creates a new [GroupCapacityReservationSpecificationCapacityReservationTarget].
  /// [capacityReservationIds] List of On-Demand Capacity Reservation Ids. Conflicts with `capacity_reservation_resource_group_arns`.
  /// [capacityReservationResourceGroupArns] List of On-Demand Capacity Reservation Resource Group Arns. Conflicts with `capacity_reservation_ids`.
  GroupCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservationIds,
    this.capacityReservationResourceGroupArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationIds': ?capacityReservationIds,
      'capacityReservationResourceGroupArns': ?capacityReservationResourceGroupArns,
    };
  }

  factory GroupCapacityReservationSpecificationCapacityReservationTarget.fromMap(Map<String, dynamic> map) {
    return GroupCapacityReservationSpecificationCapacityReservationTarget(
      capacityReservationIds: (() { final guardedValue = map['capacityReservationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capacityReservationResourceGroupArns: (() { final guardedValue = map['capacityReservationResourceGroupArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

