// ignore_for_file: unused_element, unnecessary_cast

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityResponse7 {
  /// Optional. Type of reservation to consume
  final String consumeReservationType;

  /// Optional. Corresponds to the label key of reservation resource.
  final String key;

  /// Optional. Corresponds to the label values of reservation resource.
  final List<String> values;

  ReservationAffinityResponse7({
    required this.consumeReservationType,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumeReservationType'] = consumeReservationType;
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory ReservationAffinityResponse7.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityResponse7(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
