// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FieldLogLevelEnumValue
class FieldLogLevelEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [FieldLogLevelEnumValueResponse].
  /// [value] Property value
  FieldLogLevelEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FieldLogLevelEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return FieldLogLevelEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

