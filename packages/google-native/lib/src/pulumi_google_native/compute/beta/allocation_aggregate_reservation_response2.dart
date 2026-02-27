// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'allocation_aggregate_reservation_reserved_resource_info_response2.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservationResponse2 {
  /// [Output only] List of resources currently in use.
  final List<AllocationAggregateReservationReservedResourceInfoResponse2>
      inUseResources;

  /// List of reserved resources (CPUs, memory, accelerators).
  final List<AllocationAggregateReservationReservedResourceInfoResponse2>
      reservedResources;

  /// The VM family that all instances scheduled against this reservation must belong to.
  final String vmFamily;

  /// The workload type of the instances that will target this reservation.
  final String workloadType;

  AllocationAggregateReservationResponse2({
    required this.inUseResources,
    required this.reservedResources,
    required this.vmFamily,
    required this.workloadType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inUseResources'] = Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponse2,
        Map<String, dynamic>>(inUseResources, (value) => value.toMap());
    map['reservedResources'] = Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponse2,
        Map<String, dynamic>>(reservedResources, (value) => value.toMap());
    map['vmFamily'] = vmFamily;
    map['workloadType'] = workloadType;
    return map;
  }

  factory AllocationAggregateReservationResponse2.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationResponse2(
      inUseResources: Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponse2>(
          map['inUseResources'],
          (value) => AllocationAggregateReservationReservedResourceInfoResponse2
              .fromMap((value as Map).cast<String, dynamic>())),
      reservedResources: Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponse2>(
          map['reservedResources'],
          (value) => AllocationAggregateReservationReservedResourceInfoResponse2
              .fromMap((value as Map).cast<String, dynamic>())),
      vmFamily: map['vmFamily'] as String,
      workloadType: map['workloadType'] as String,
    );
  }
}
