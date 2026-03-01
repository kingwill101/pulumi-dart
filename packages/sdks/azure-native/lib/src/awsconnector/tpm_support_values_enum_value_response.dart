// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TpmSupportValuesEnumValue
class TpmSupportValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [TpmSupportValuesEnumValueResponse].
  /// [value] Property value
  TpmSupportValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TpmSupportValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TpmSupportValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

