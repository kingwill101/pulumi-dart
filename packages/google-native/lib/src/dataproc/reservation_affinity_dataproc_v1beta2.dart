// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_affinity_consume_reservation_type_dataproc_v1beta2.dart';

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityDataprocV1beta2 {
  /// Optional. Type of reservation to consume
  final ReservationAffinityConsumeReservationTypeDataprocV1beta2?
  consumeReservationType;

  /// Optional. Corresponds to the label key of reservation resource.
  final String? key;

  /// Optional. Corresponds to the label values of reservation resource.
  final List<String>? values;

  /// Creates a new [ReservationAffinityDataprocV1beta2].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  ReservationAffinityDataprocV1beta2({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?consumeReservationType == null
          ? null
          : consumeReservationType!.value,
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinityDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityDataprocV1beta2(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : ReservationAffinityConsumeReservationTypeDataprocV1beta2.fromValue(
              map['consumeReservationType'] as String,
            ),
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
