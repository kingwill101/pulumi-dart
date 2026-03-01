// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_compute_beta.dart';
import 'allocation_aggregate_reservation_vm_family_compute_beta.dart';
import 'allocation_aggregate_reservation_workload_type_compute_beta.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservationComputeBeta {
  /// List of reserved resources (CPUs, memory, accelerators).
  final List<AllocationAggregateReservationReservedResourceInfoComputeBeta>?
  reservedResources;

  /// The VM family that all instances scheduled against this reservation must belong to.
  final AllocationAggregateReservationVmFamilyComputeBeta? vmFamily;

  /// The workload type of the instances that will target this reservation.
  final AllocationAggregateReservationWorkloadTypeComputeBeta? workloadType;

  /// Creates a new [AllocationAggregateReservationComputeBeta].
  /// [reservedResources] List of reserved resources (CPUs, memory, accelerators).
  /// [vmFamily] The VM family that all instances scheduled against this reservation must belong to.
  /// [workloadType] The workload type of the instances that will target this reservation.
  AllocationAggregateReservationComputeBeta({
    this.reservedResources,
    this.vmFamily,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservedResources': ?reservedResources == null
          ? null
          : pulumi.Input.encodeList<
              AllocationAggregateReservationReservedResourceInfoComputeBeta,
              Map<String, dynamic>
            >(reservedResources!, (value) => value.toMap()),
      'vmFamily': ?vmFamily == null ? null : vmFamily!.value,
      'workloadType': ?workloadType == null ? null : workloadType!.value,
    };
  }

  factory AllocationAggregateReservationComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationAggregateReservationComputeBeta(
      reservedResources: map['reservedResources'] == null
          ? null
          : pulumi.Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoComputeBeta
            >(
              map['reservedResources'],
              (value) =>
                  AllocationAggregateReservationReservedResourceInfoComputeBeta.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      vmFamily: map['vmFamily'] == null
          ? null
          : AllocationAggregateReservationVmFamilyComputeBeta.fromValue(
              map['vmFamily'] as String,
            ),
      workloadType: map['workloadType'] == null
          ? null
          : AllocationAggregateReservationWorkloadTypeComputeBeta.fromValue(
              map['workloadType'] as String,
            ),
    );
  }
}
