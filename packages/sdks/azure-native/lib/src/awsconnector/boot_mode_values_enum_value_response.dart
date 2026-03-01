// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BootModeValuesEnumValue
class BootModeValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [BootModeValuesEnumValueResponse].
  /// [value] Property value
  BootModeValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BootModeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BootModeValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

