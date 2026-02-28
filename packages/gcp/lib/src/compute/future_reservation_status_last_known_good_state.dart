// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_existing_matching_usage_info.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs.dart';

class FutureReservationStatusLastKnownGoodState {
  /// An optional description of this resource.
  final String? description;

  /// Represents the matching usage for the future reservation before an amendment was requested.
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo?
      existingMatchingUsageInfo;

  /// The previous instance-related properties of the Future Reservation.
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecs?
      futureReservationSpecs;

  /// The lock time of the FutureReservation before an amendment was requested.
  final String? lockTime;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final String? namePrefix;

  /// The status of the last known good state for the Future Reservation
  /// Possible values are: .
  final String? procurementStatus;

  /// Creates a new [FutureReservationStatusLastKnownGoodState].
  /// [description] An optional description of this resource.
  /// [existingMatchingUsageInfo] Represents the matching usage for the future reservation before an amendment was requested.
  /// [futureReservationSpecs] The previous instance-related properties of the Future Reservation.
  /// [lockTime] The lock time of the FutureReservation before an amendment was requested.
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [procurementStatus] The status of the last known good state for the Future Reservation
  FutureReservationStatusLastKnownGoodState({
    this.description,
    this.existingMatchingUsageInfo,
    this.futureReservationSpecs,
    this.lockTime,
    this.namePrefix,
    this.procurementStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final existingMatchingUsageInfoValue = existingMatchingUsageInfo;
    if (existingMatchingUsageInfoValue != null) {
      map['existingMatchingUsageInfo'] = existingMatchingUsageInfoValue.toMap();
    }
    final futureReservationSpecsValue = futureReservationSpecs;
    if (futureReservationSpecsValue != null) {
      map['futureReservationSpecs'] = futureReservationSpecsValue.toMap();
    }
    final lockTimeValue = lockTime;
    if (lockTimeValue != null) {
      map['lockTime'] = lockTimeValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final procurementStatusValue = procurementStatus;
    if (procurementStatusValue != null) {
      map['procurementStatus'] = procurementStatusValue;
    }
    return map;
  }

  factory FutureReservationStatusLastKnownGoodState.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodState(
      description:
          map['description'] == null ? null : map['description'] as String,
      existingMatchingUsageInfo: map['existingMatchingUsageInfo'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo
              .fromMap((map['existingMatchingUsageInfo'] as Map)
                  .cast<String, dynamic>()),
      futureReservationSpecs: map['futureReservationSpecs'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateFutureReservationSpecs
              .fromMap((map['futureReservationSpecs'] as Map)
                  .cast<String, dynamic>()),
      lockTime: map['lockTime'] == null ? null : map['lockTime'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      procurementStatus: map['procurementStatus'] == null
          ? null
          : map['procurementStatus'] as String,
    );
  }
}
