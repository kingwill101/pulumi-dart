// ignore_for_file: unused_element, unnecessary_cast


/// Definition of KeyAlgorithmEnumValue
class KeyAlgorithmEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [KeyAlgorithmEnumValue].
  /// [value] Property value
  KeyAlgorithmEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory KeyAlgorithmEnumValue.fromMap(Map<String, dynamic> map) {
    return KeyAlgorithmEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

