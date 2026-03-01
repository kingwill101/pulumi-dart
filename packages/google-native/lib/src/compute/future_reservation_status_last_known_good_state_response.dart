// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_future_reservation_specs_response.dart';

/// The state that the future reservation will be reverted to should the amendment be declined.
class FutureReservationStatusLastKnownGoodStateResponse {
  /// The description of the FutureReservation before an amendment was requested.
  final String description;
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse
  futureReservationSpecs;

  /// The lock time of the FutureReservation before an amendment was requested.
  final String lockTime;

  /// The name prefix of the Future Reservation before an amendment was requested.
  final String namePrefix;

  /// The status of the last known good state for the Future Reservation.
  final String procurementStatus;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateResponse].
  /// [description] The description of the FutureReservation before an amendment was requested.
  /// [futureReservationSpecs] Required.
  /// [lockTime] The lock time of the FutureReservation before an amendment was requested.
  /// [namePrefix] The name prefix of the Future Reservation before an amendment was requested.
  /// [procurementStatus] The status of the last known good state for the Future Reservation.
  FutureReservationStatusLastKnownGoodStateResponse({
    required this.description,
    required this.futureReservationSpecs,
    required this.lockTime,
    required this.namePrefix,
    required this.procurementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'futureReservationSpecs': futureReservationSpecs.toMap(),
      'lockTime': lockTime,
      'namePrefix': namePrefix,
      'procurementStatus': procurementStatus,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateResponse(
      description: map['description'] as String,
      futureReservationSpecs:
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse.fromMap(
            (map['futureReservationSpecs'] as Map).cast<String, dynamic>(),
          ),
      lockTime: map['lockTime'] as String,
      namePrefix: map['namePrefix'] as String,
      procurementStatus: map['procurementStatus'] as String,
    );
  }
}
