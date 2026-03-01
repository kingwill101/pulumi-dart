// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TpmSupportValuesEnumValue
class TpmSupportValuesEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [TpmSupportValuesEnumValue].
  /// [value] Property value
  TpmSupportValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TpmSupportValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return TpmSupportValuesEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

