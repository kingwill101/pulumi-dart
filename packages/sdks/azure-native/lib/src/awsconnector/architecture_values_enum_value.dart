// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArchitectureValuesEnumValue
class ArchitectureValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ArchitectureValuesEnumValue].
  /// [value] Property value
  ArchitectureValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArchitectureValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return ArchitectureValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

