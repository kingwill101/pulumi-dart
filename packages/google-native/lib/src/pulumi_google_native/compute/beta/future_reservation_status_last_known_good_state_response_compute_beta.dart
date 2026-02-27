// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_future_reservation_specs_response_compute_beta.dart';

/// The state that the future reservation will be reverted to should the amendment be declined.
class FutureReservationStatusLastKnownGoodStateResponseComputeBeta {
  /// The description of the FutureReservation before an amendment was requested.
  final String description;
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta
      futureReservationSpecs;

  /// The lock time of the FutureReservation before an amendment was requested.
  final String lockTime;

  /// The name prefix of the Future Reservation before an amendment was requested.
  final String namePrefix;

  /// The status of the last known good state for the Future Reservation.
  final String procurementStatus;

  FutureReservationStatusLastKnownGoodStateResponseComputeBeta({
    required this.description,
    required this.futureReservationSpecs,
    required this.lockTime,
    required this.namePrefix,
    required this.procurementStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['futureReservationSpecs'] = futureReservationSpecs.toMap();
    map['lockTime'] = lockTime;
    map['namePrefix'] = namePrefix;
    map['procurementStatus'] = procurementStatus;
    return map;
  }

  factory FutureReservationStatusLastKnownGoodStateResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateResponseComputeBeta(
      description: map['description'] as String,
      futureReservationSpecs:
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta
              .fromMap((map['futureReservationSpecs'] as Map)
                  .cast<String, dynamic>()),
      lockTime: map['lockTime'] as String,
      namePrefix: map['namePrefix'] as String,
      procurementStatus: map['procurementStatus'] as String,
    );
  }
}
