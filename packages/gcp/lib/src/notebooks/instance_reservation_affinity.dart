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
    return <String, dynamic>{
      'consumeReservationType': consumeReservationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory InstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceReservationAffinity(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
