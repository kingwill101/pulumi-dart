// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlatformValuesEnumValue
class PlatformValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [PlatformValuesEnumValueResponse].
  /// [value] Property value
  PlatformValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlatformValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

