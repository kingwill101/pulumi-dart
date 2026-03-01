// ignore_for_file: unused_element, unnecessary_cast


/// Definition of KeyAlgorithmEnumValue
class KeyAlgorithmEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [KeyAlgorithmEnumValueResponse].
  /// [value] Property value
  KeyAlgorithmEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory KeyAlgorithmEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return KeyAlgorithmEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

