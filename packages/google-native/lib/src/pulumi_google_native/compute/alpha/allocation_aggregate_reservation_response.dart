// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allocation_aggregate_reservation_reserved_resource_info_response.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservationResponse {
  /// [Output only] List of resources currently in use.
  final List<AllocationAggregateReservationReservedResourceInfoResponse>
      inUseResources;

  /// List of reserved resources (CPUs, memory, accelerators).
  final List<AllocationAggregateReservationReservedResourceInfoResponse>
      reservedResources;

  /// The VM family that all instances scheduled against this reservation must belong to.
  final String vmFamily;

  /// The workload type of the instances that will target this reservation.
  final String workloadType;

  AllocationAggregateReservationResponse({
    required this.inUseResources,
    required this.reservedResources,
    required this.vmFamily,
    required this.workloadType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inUseResources'] = Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponse,
        Map<String, dynamic>>(inUseResources, (value) => value.toMap());
    map['reservedResources'] = Input.encodeList<
        AllocationAggregateReservationReservedResourceInfoResponse,
        Map<String, dynamic>>(reservedResources, (value) => value.toMap());
    map['vmFamily'] = vmFamily;
    map['workloadType'] = workloadType;
    return map;
  }

  factory AllocationAggregateReservationResponse.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationResponse(
      inUseResources: Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponse>(
          map['inUseResources'],
          (value) => AllocationAggregateReservationReservedResourceInfoResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      reservedResources: Input.decodeList<
              AllocationAggregateReservationReservedResourceInfoResponse>(
          map['reservedResources'],
          (value) => AllocationAggregateReservationReservedResourceInfoResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      vmFamily: map['vmFamily'] as String,
      workloadType: map['workloadType'] as String,
    );
  }
}
