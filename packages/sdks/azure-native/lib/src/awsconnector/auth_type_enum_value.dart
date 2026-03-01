// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AuthTypeEnumValue
class AuthTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [AuthTypeEnumValue].
  /// [value] Property value
  AuthTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return AuthTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

