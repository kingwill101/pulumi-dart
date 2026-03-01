// ignore_for_file: unused_element, unnecessary_cast

class InstanceReservationAffinitySpecificReservation {
  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.
  final String key;

  /// Corresponds to the label values of a reservation resource.
  final List<String> values;

  /// Creates a new [InstanceReservationAffinitySpecificReservation].
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.
  /// [values] Corresponds to the label values of a reservation resource.
  InstanceReservationAffinitySpecificReservation({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory InstanceReservationAffinitySpecificReservation.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceReservationAffinitySpecificReservation(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
