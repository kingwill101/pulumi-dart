// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EnvironmentVariableTypeEnumValue
class EnvironmentVariableTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [EnvironmentVariableTypeEnumValue].
  /// [value] Property value
  EnvironmentVariableTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnvironmentVariableTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

