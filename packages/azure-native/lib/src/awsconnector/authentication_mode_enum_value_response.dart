// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AuthenticationModeEnumValue
class AuthenticationModeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AuthenticationModeEnumValueResponse].
  /// [value] Property value
  AuthenticationModeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthenticationModeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationModeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

