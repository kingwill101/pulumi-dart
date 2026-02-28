// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_resource_status_health_info.dart';
import 'get_reservation_resource_status_reservation_maintenance.dart';
import 'get_reservation_resource_status_specific_sku_allocation.dart';

class GetReservationResourceStatus {
  /// Health information for the reservation.
  final List<GetReservationResourceStatusHealthInfo> healthInfos;
  /// The number of reservation blocks associated with this reservation.
  final int reservationBlockCount;
  /// Maintenance information for this reservation
  final List<GetReservationResourceStatusReservationMaintenance> reservationMaintenances;
  /// Allocation Properties of this reservation.
  final List<GetReservationResourceStatusSpecificSkuAllocation> specificSkuAllocations;

  /// Creates a new [GetReservationResourceStatus].
  /// [healthInfos] Health information for the reservation.
  /// [reservationBlockCount] The number of reservation blocks associated with this reservation.
  /// [reservationMaintenances] Maintenance information for this reservation
  /// [specificSkuAllocations] Allocation Properties of this reservation.
  GetReservationResourceStatus({
    required this.healthInfos,
    required this.reservationBlockCount,
    required this.reservationMaintenances,
    required this.specificSkuAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthInfos': pulumi.Input.encodeList<GetReservationResourceStatusHealthInfo, Map<String, dynamic>>(healthInfos, (value) => value.toMap()),
      'reservationBlockCount': reservationBlockCount,
      'reservationMaintenances': pulumi.Input.encodeList<GetReservationResourceStatusReservationMaintenance, Map<String, dynamic>>(reservationMaintenances, (value) => value.toMap()),
      'specificSkuAllocations': pulumi.Input.encodeList<GetReservationResourceStatusSpecificSkuAllocation, Map<String, dynamic>>(specificSkuAllocations, (value) => value.toMap()),
    };
  }

  factory GetReservationResourceStatus.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatus(
      healthInfos: pulumi.Input.decodeList<GetReservationResourceStatusHealthInfo>(map['healthInfos'], (value) => GetReservationResourceStatusHealthInfo.fromMap((value as Map).cast<String, dynamic>())),
      reservationBlockCount: map['reservationBlockCount'] as int,
      reservationMaintenances: pulumi.Input.decodeList<GetReservationResourceStatusReservationMaintenance>(map['reservationMaintenances'], (value) => GetReservationResourceStatusReservationMaintenance.fromMap((value as Map).cast<String, dynamic>())),
      specificSkuAllocations: pulumi.Input.decodeList<GetReservationResourceStatusSpecificSkuAllocation>(map['specificSkuAllocations'], (value) => GetReservationResourceStatusSpecificSkuAllocation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

