// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_affinity_consume_reservation_type.dart';

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinity {
  /// Optional. Type of reservation to consume
  final ReservationAffinityConsumeReservationType? consumeReservationType;

  /// Optional. Corresponds to the label key of reservation resource.
  final String? key;

  /// Optional. Corresponds to the label values of reservation resource.
  final List<String>? values;

  /// Creates a new [ReservationAffinity].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  ReservationAffinity({
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

  factory ReservationAffinity.fromMap(Map<String, dynamic> map) {
    return ReservationAffinity(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : ReservationAffinityConsumeReservationType.fromValue(
              map['consumeReservationType'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
