// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_response_compute_beta.dart';
import 'future_reservation_status_specific_skuproperties_response_compute_beta.dart';

/// [Output only] Represents status related to the future reservation.
class FutureReservationStatusResponseComputeBeta {
  /// The current status of the requested amendment.
  final String amendmentStatus;

  /// Fully qualified urls of the automatically created reservations at start_time.
  final List<String> autoCreatedReservations;

  /// This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  final String fulfilledCount;

  /// This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  final FutureReservationStatusLastKnownGoodStateResponseComputeBeta
  lastKnownGoodState;

  /// Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  final String lockTime;

  /// Current state of this Future Reservation
  final String procurementStatus;
  final FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta
  specificSkuProperties;

  /// Creates a new [FutureReservationStatusResponseComputeBeta].
  /// [amendmentStatus] The current status of the requested amendment.
  /// [autoCreatedReservations] Fully qualified urls of the automatically created reservations at start_time.
  /// [fulfilledCount] This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  /// [lastKnownGoodState] This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  /// [lockTime] Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  /// [procurementStatus] Current state of this Future Reservation
  /// [specificSkuProperties] Required.
  FutureReservationStatusResponseComputeBeta({
    required this.amendmentStatus,
    required this.autoCreatedReservations,
    required this.fulfilledCount,
    required this.lastKnownGoodState,
    required this.lockTime,
    required this.procurementStatus,
    required this.specificSkuProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amendmentStatus': amendmentStatus,
      'autoCreatedReservations': autoCreatedReservations,
      'fulfilledCount': fulfilledCount,
      'lastKnownGoodState': lastKnownGoodState.toMap(),
      'lockTime': lockTime,
      'procurementStatus': procurementStatus,
      'specificSkuProperties': specificSkuProperties.toMap(),
    };
  }

  factory FutureReservationStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusResponseComputeBeta(
      amendmentStatus: map['amendmentStatus'] as String,
      autoCreatedReservations: (map['autoCreatedReservations'] as List)
          .cast<String>(),
      fulfilledCount: map['fulfilledCount'] as String,
      lastKnownGoodState:
          FutureReservationStatusLastKnownGoodStateResponseComputeBeta.fromMap(
            (map['lastKnownGoodState'] as Map).cast<String, dynamic>(),
          ),
      lockTime: map['lockTime'] as String,
      procurementStatus: map['procurementStatus'] as String,
      specificSkuProperties:
          FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta.fromMap(
            (map['specificSkuProperties'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
