// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceBootModeValuesEnumValue
class InstanceBootModeValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceBootModeValuesEnumValue].
  /// [value] Property value
  InstanceBootModeValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceBootModeValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceBootModeValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

