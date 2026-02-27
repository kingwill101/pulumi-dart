// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_affinity_consume_reservation_type_dataproc_v1.dart';

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityDataprocV1 {
  /// Optional. Type of reservation to consume
  final ReservationAffinityConsumeReservationTypeDataprocV1?
      consumeReservationType;

  /// Optional. Corresponds to the label key of reservation resource.
  final String? key;

  /// Optional. Corresponds to the label values of reservation resource.
  final List<String>? values;

  ReservationAffinityDataprocV1({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumeReservationTypeValue = consumeReservationType;
    if (consumeReservationTypeValue != null) {
      map['consumeReservationType'] = consumeReservationTypeValue.value;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory ReservationAffinityDataprocV1.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityDataprocV1(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : ReservationAffinityConsumeReservationTypeDataprocV1.fromValue(
              map['consumeReservationType'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
