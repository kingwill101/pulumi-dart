// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FieldLogLevelEnumValue
class FieldLogLevelEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [FieldLogLevelEnumValue].
  /// [value] Property value
  FieldLogLevelEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FieldLogLevelEnumValue.fromMap(Map<String, dynamic> map) {
    return FieldLogLevelEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

