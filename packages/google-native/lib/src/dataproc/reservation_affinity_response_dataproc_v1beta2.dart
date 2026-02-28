// ignore_for_file: unused_element, unnecessary_cast

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityResponseDataprocV1beta2 {
  /// Optional. Type of reservation to consume
  final String consumeReservationType;

  /// Optional. Corresponds to the label key of reservation resource.
  final String key;

  /// Optional. Corresponds to the label values of reservation resource.
  final List<String> values;

  /// Creates a new [ReservationAffinityResponseDataprocV1beta2].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  ReservationAffinityResponseDataprocV1beta2({
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

  factory ReservationAffinityResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ReservationAffinityResponseDataprocV1beta2(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
