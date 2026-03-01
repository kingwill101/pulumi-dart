// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceBootModeValuesEnumValue
class InstanceBootModeValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceBootModeValuesEnumValueResponse].
  /// [value] Property value
  InstanceBootModeValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceBootModeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceBootModeValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

