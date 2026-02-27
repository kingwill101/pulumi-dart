// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_response_compute_beta.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservationResponseComputeBeta {
  /// [Output only] List of resources currently in use.
  final List<
          AllocationAggregateReservationReservedResourceInfoResponseComputeBeta>
      inUseResources;

  /// List of reserved resources (CPUs, memory, accelerators).
  final List<
          AllocationAggregateReservationReservedResourceInfoResponseComputeBeta>
      reservedResources;

  /// The VM family that all instances scheduled against this reservation must belong to.
  final String vmFamily;

  /// The workload type of the instances that will target this reservation.
  final String workloadType;

  AllocationAggregateReservationResponseComputeBeta({
    required this.inUseResources,
    required this.reservedResources,
    required this.vmFamily,
    required this.workloadType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inUseResources'] = pulumi.Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponseComputeBeta,
        Map<String, dynamic>>(inUseResources, (value) => value.toMap());
    map['reservedResources'] = pulumi.Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponseComputeBeta,
        Map<String, dynamic>>(reservedResources, (value) => value.toMap());
    map['vmFamily'] = vmFamily;
    map['workloadType'] = workloadType;
    return map;
  }

  factory AllocationAggregateReservationResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationResponseComputeBeta(
      inUseResources: pulumi.Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponseComputeBeta>(
          map['inUseResources'],
          (value) =>
              AllocationAggregateReservationReservedResourceInfoResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      reservedResources: pulumi.Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponseComputeBeta>(
          map['reservedResources'],
          (value) =>
              AllocationAggregateReservationReservedResourceInfoResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      vmFamily: map['vmFamily'] as String,
      workloadType: map['workloadType'] as String,
    );
  }
}
