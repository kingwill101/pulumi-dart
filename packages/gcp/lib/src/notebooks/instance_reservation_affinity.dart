// ignore_for_file: unused_element, unnecessary_cast

class InstanceReservationAffinity {
  /// The type of Compute Reservation.
  /// Possible values are: `NO_RESERVATION`, `ANY_RESERVATION`, `SPECIFIC_RESERVATION`.
  final String consumeReservationType;

  /// Corresponds to the label key of reservation resource.
  final String? key;

  /// Corresponds to the label values of reservation resource.
  final List<String>? values;

  /// Creates a new [InstanceReservationAffinity].
  /// [consumeReservationType] The type of Compute Reservation.
  /// [key] Corresponds to the label key of reservation resource.
  /// [values] Corresponds to the label values of reservation resource.
  InstanceReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumeReservationType'] = consumeReservationType;
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

  factory InstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceReservationAffinity(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
