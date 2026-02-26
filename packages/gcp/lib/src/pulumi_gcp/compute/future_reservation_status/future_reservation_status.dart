// ignore_for_file: unused_element, unnecessary_cast

import '../future_reservation_status_last_known_good_state/future_reservation_status_last_known_good_state.dart';
import '../future_reservation_status_specific_sku_properties/future_reservation_status_specific_sku_properties.dart';

class FutureReservationStatus {
  /// The current status of the requested amendment.
  /// Possible values are: .
  final String? amendmentStatus;

  /// Fully qualified urls of the automatically created reservations at startTime.
  final List<String>? autoCreatedReservations;

  /// This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  final String? fulfilledCount;

  /// This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodState? lastKnownGoodState;

  /// The lock time of the FutureReservation before an amendment was requested.
  final String? lockTime;

  /// The status of the last known good state for the Future Reservation
  /// Possible values are: .
  final String? procurementStatus;

  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final FutureReservationStatusSpecificSkuProperties? specificSkuProperties;

  FutureReservationStatus({
    this.amendmentStatus,
    this.autoCreatedReservations,
    this.fulfilledCount,
    this.lastKnownGoodState,
    this.lockTime,
    this.procurementStatus,
    this.specificSkuProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amendmentStatusValue = amendmentStatus;
    if (amendmentStatusValue != null) {
      map['amendmentStatus'] = amendmentStatusValue;
    }
    final autoCreatedReservationsValue = autoCreatedReservations;
    if (autoCreatedReservationsValue != null) {
      map['autoCreatedReservations'] = autoCreatedReservationsValue;
    }
    final fulfilledCountValue = fulfilledCount;
    if (fulfilledCountValue != null) {
      map['fulfilledCount'] = fulfilledCountValue;
    }
    final lastKnownGoodStateValue = lastKnownGoodState;
    if (lastKnownGoodStateValue != null) {
      map['lastKnownGoodState'] = lastKnownGoodStateValue.toMap();
    }
    final lockTimeValue = lockTime;
    if (lockTimeValue != null) {
      map['lockTime'] = lockTimeValue;
    }
    final procurementStatusValue = procurementStatus;
    if (procurementStatusValue != null) {
      map['procurementStatus'] = procurementStatusValue;
    }
    final specificSkuPropertiesValue = specificSkuProperties;
    if (specificSkuPropertiesValue != null) {
      map['specificSkuProperties'] = specificSkuPropertiesValue.toMap();
    }
    return map;
  }

  factory FutureReservationStatus.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatus(
      amendmentStatus: map['amendmentStatus'] == null
          ? null
          : map['amendmentStatus'] as String,
      autoCreatedReservations: map['autoCreatedReservations'] == null
          ? null
          : (map['autoCreatedReservations'] as List).cast<String>(),
      fulfilledCount: map['fulfilledCount'] == null
          ? null
          : map['fulfilledCount'] as String,
      lastKnownGoodState: map['lastKnownGoodState'] == null
          ? null
          : FutureReservationStatusLastKnownGoodState.fromMap(
              (map['lastKnownGoodState'] as Map).cast<String, dynamic>()),
      lockTime: map['lockTime'] == null ? null : map['lockTime'] as String,
      procurementStatus: map['procurementStatus'] == null
          ? null
          : map['procurementStatus'] as String,
      specificSkuProperties: map['specificSkuProperties'] == null
          ? null
          : FutureReservationStatusSpecificSkuProperties.fromMap(
              (map['specificSkuProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
