// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EnvironmentVariableTypeEnumValue
class EnvironmentVariableTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [EnvironmentVariableTypeEnumValueResponse].
  /// [value] Property value
  EnvironmentVariableTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnvironmentVariableTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

