// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_affinity_consume_reservation_type_compute_v1.dart';

/// Specifies the reservations that this instance can consume from.
class ReservationAffinityComputeV1 {
  /// Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
  final ReservationAffinityConsumeReservationTypeComputeV1?
      consumeReservationType;

  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify googleapis.com/reservation-name as the key and specify the name of your reservation as its value.
  final String? key;

  /// Corresponds to the label values of a reservation resource. This can be either a name to a reservation in the same project or "projects/different-project/reservations/some-reservation-name" to target a shared reservation in the same zone but in a different project.
  final List<String>? values;

  /// Creates a new [ReservationAffinityComputeV1].
  /// [consumeReservationType] Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify googleapis.com/reservation-name as the key and specify the name of your reservation as its value.
  /// [values] Corresponds to the label values of a reservation resource. This can be either a name to a reservation in the same project or "projects/different-project/reservations/some-reservation-name" to target a shared reservation in the same zone but in a different project.
  ReservationAffinityComputeV1({
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

  factory ReservationAffinityComputeV1.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityComputeV1(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : ReservationAffinityConsumeReservationTypeComputeV1.fromValue(
              map['consumeReservationType'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
