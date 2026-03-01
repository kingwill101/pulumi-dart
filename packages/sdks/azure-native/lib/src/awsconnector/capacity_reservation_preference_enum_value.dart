// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CapacityReservationPreferenceEnumValue
class CapacityReservationPreferenceEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [CapacityReservationPreferenceEnumValue].
  /// [value] Property value
  CapacityReservationPreferenceEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CapacityReservationPreferenceEnumValue.fromMap(Map<String, dynamic> map) {
    return CapacityReservationPreferenceEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

