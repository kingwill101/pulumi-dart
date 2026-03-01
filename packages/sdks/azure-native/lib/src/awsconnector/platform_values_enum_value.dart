// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlatformValuesEnumValue
class PlatformValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [PlatformValuesEnumValue].
  /// [value] Property value
  PlatformValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return PlatformValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

