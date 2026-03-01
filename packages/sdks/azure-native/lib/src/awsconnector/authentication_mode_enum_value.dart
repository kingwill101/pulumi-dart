// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AuthenticationModeEnumValue
class AuthenticationModeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [AuthenticationModeEnumValue].
  /// [value] Property value
  AuthenticationModeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthenticationModeEnumValue.fromMap(Map<String, dynamic> map) {
    return AuthenticationModeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

