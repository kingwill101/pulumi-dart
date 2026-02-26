// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allocation_aggregate_reservation_reserved_resource_info.dart';
import 'allocation_aggregate_reservation_vm_family.dart';
import 'allocation_aggregate_reservation_workload_type.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservation {
  /// List of reserved resources (CPUs, memory, accelerators).
  final List<AllocationAggregateReservationReservedResourceInfo>?
      reservedResources;

  /// The VM family that all instances scheduled against this reservation must belong to.
  final AllocationAggregateReservationVmFamily? vmFamily;

  /// The workload type of the instances that will target this reservation.
  final AllocationAggregateReservationWorkloadType? workloadType;

  AllocationAggregateReservation({
    this.reservedResources,
    this.vmFamily,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final reservedResourcesValue = reservedResources;
    if (reservedResourcesValue != null) {
      map['reservedResources'] = Input.encodeList<
              AllocationAggregateReservationReservedResourceInfo,
              Map<String, dynamic>>(
          reservedResourcesValue, (value) => value.toMap());
    }
    final vmFamilyValue = vmFamily;
    if (vmFamilyValue != null) {
      map['vmFamily'] = vmFamilyValue.value;
    }
    final workloadTypeValue = workloadType;
    if (workloadTypeValue != null) {
      map['workloadType'] = workloadTypeValue.value;
    }
    return map;
  }

  factory AllocationAggregateReservation.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservation(
      reservedResources: map['reservedResources'] == null
          ? null
          : Input.decodeList<
                  AllocationAggregateReservationReservedResourceInfo>(
              map['reservedResources'],
              (value) =>
                  AllocationAggregateReservationReservedResourceInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vmFamily: map['vmFamily'] == null
          ? null
          : AllocationAggregateReservationVmFamily.fromValue(
              map['vmFamily'] as String),
      workloadType: map['workloadType'] == null
          ? null
          : AllocationAggregateReservationWorkloadType.fromValue(
              map['workloadType'] as String),
    );
  }
}
