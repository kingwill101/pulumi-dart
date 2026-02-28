// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_resource_status_health_info.dart';
import 'reservation_resource_status_reservation_maintenance.dart';
import 'reservation_resource_status_specific_sku_allocation.dart';

class ReservationResourceStatus {
  /// (Output)
  /// Health information for the reservation.
  /// Structure is documented below.
  final List<ReservationResourceStatusHealthInfo>? healthInfos;

  /// (Output)
  /// The number of reservation blocks associated with this reservation.
  final int? reservationBlockCount;

  /// (Output)
  /// Maintenance information for this reservation
  /// Structure is documented below.
  final List<ReservationResourceStatusReservationMaintenance>?
      reservationMaintenances;

  /// (Output)
  /// Allocation Properties of this reservation.
  /// Structure is documented below.
  final List<ReservationResourceStatusSpecificSkuAllocation>?
      specificSkuAllocations;

  /// Creates a new [ReservationResourceStatus].
  /// [healthInfos] (Output)
  /// [reservationBlockCount] (Output)
  /// [reservationMaintenances] (Output)
  /// [specificSkuAllocations] (Output)
  ReservationResourceStatus({
    this.healthInfos,
    this.reservationBlockCount,
    this.reservationMaintenances,
    this.specificSkuAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthInfosValue = healthInfos;
    if (healthInfosValue != null) {
      map['healthInfos'] = pulumi.Input.encodeList<
          ReservationResourceStatusHealthInfo,
          Map<String, dynamic>>(healthInfosValue, (value) => value.toMap());
    }
    final reservationBlockCountValue = reservationBlockCount;
    if (reservationBlockCountValue != null) {
      map['reservationBlockCount'] = reservationBlockCountValue;
    }
    final reservationMaintenancesValue = reservationMaintenances;
    if (reservationMaintenancesValue != null) {
      map['reservationMaintenances'] = pulumi.Input.encodeList<
              ReservationResourceStatusReservationMaintenance,
              Map<String, dynamic>>(
          reservationMaintenancesValue, (value) => value.toMap());
    }
    final specificSkuAllocationsValue = specificSkuAllocations;
    if (specificSkuAllocationsValue != null) {
      map['specificSkuAllocations'] = pulumi.Input.encodeList<
              ReservationResourceStatusSpecificSkuAllocation,
              Map<String, dynamic>>(
          specificSkuAllocationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReservationResourceStatus.fromMap(Map<String, dynamic> map) {
    return ReservationResourceStatus(
      healthInfos: map['healthInfos'] == null
          ? null
          : pulumi.Input.decodeList<ReservationResourceStatusHealthInfo>(
              map['healthInfos'],
              (value) => ReservationResourceStatusHealthInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      reservationBlockCount: map['reservationBlockCount'] == null
          ? null
          : map['reservationBlockCount'] as int,
      reservationMaintenances: map['reservationMaintenances'] == null
          ? null
          : pulumi.Input.decodeList<
                  ReservationResourceStatusReservationMaintenance>(
              map['reservationMaintenances'],
              (value) =>
                  ReservationResourceStatusReservationMaintenance.fromMap(
                      (value as Map).cast<String, dynamic>())),
      specificSkuAllocations: map['specificSkuAllocations'] == null
          ? null
          : pulumi.Input.decodeList<
                  ReservationResourceStatusSpecificSkuAllocation>(
              map['specificSkuAllocations'],
              (value) => ReservationResourceStatusSpecificSkuAllocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
