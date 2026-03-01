// ignore_for_file: unused_element, unnecessary_cast


/// Definition of HttpTokensStateEnumValue
class HttpTokensStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [HttpTokensStateEnumValue].
  /// [value] Property value
  HttpTokensStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HttpTokensStateEnumValue.fromMap(Map<String, dynamic> map) {
    return HttpTokensStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

