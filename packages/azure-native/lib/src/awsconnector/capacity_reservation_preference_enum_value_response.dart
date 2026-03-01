// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CapacityReservationPreferenceEnumValue
class CapacityReservationPreferenceEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [CapacityReservationPreferenceEnumValueResponse].
  /// [value] Property value
  CapacityReservationPreferenceEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CapacityReservationPreferenceEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationPreferenceEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

