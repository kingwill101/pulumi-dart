// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the reservations that this instance can consume from.
class ReservationAffinityResponseComputeBeta {
  /// Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
  final String consumeReservationType;

  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify googleapis.com/reservation-name as the key and specify the name of your reservation as its value.
  final String key;

  /// Corresponds to the label values of a reservation resource. This can be either a name to a reservation in the same project or "projects/different-project/reservations/some-reservation-name" to target a shared reservation in the same zone but in a different project.
  final List<String> values;

  ReservationAffinityResponseComputeBeta({
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

  factory ReservationAffinityResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ReservationAffinityResponseComputeBeta(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
