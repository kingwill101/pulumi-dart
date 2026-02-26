// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_response2.dart';
import 'future_reservation_status_specific_skuproperties_response2.dart';

/// [Output only] Represents status related to the future reservation.
class FutureReservationStatusResponse2 {
  /// The current status of the requested amendment.
  final String amendmentStatus;

  /// Fully qualified urls of the automatically created reservations at start_time.
  final List<String> autoCreatedReservations;

  /// This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  final String fulfilledCount;

  /// This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  final FutureReservationStatusLastKnownGoodStateResponse2 lastKnownGoodState;

  /// Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  final String lockTime;

  /// Current state of this Future Reservation
  final String procurementStatus;
  final FutureReservationStatusSpecificSKUPropertiesResponse2
      specificSkuProperties;

  FutureReservationStatusResponse2({
    required this.amendmentStatus,
    required this.autoCreatedReservations,
    required this.fulfilledCount,
    required this.lastKnownGoodState,
    required this.lockTime,
    required this.procurementStatus,
    required this.specificSkuProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amendmentStatus'] = amendmentStatus;
    map['autoCreatedReservations'] = autoCreatedReservations;
    map['fulfilledCount'] = fulfilledCount;
    map['lastKnownGoodState'] = lastKnownGoodState.toMap();
    map['lockTime'] = lockTime;
    map['procurementStatus'] = procurementStatus;
    map['specificSkuProperties'] = specificSkuProperties.toMap();
    return map;
  }

  factory FutureReservationStatusResponse2.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusResponse2(
      amendmentStatus: map['amendmentStatus'] as String,
      autoCreatedReservations:
          (map['autoCreatedReservations'] as List).cast<String>(),
      fulfilledCount: map['fulfilledCount'] as String,
      lastKnownGoodState:
          FutureReservationStatusLastKnownGoodStateResponse2.fromMap(
              (map['lastKnownGoodState'] as Map).cast<String, dynamic>()),
      lockTime: map['lockTime'] as String,
      procurementStatus: map['procurementStatus'] as String,
      specificSkuProperties:
          FutureReservationStatusSpecificSKUPropertiesResponse2.fromMap(
              (map['specificSkuProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
