// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AuthenticationTypeEnumValue
class AuthenticationTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AuthenticationTypeEnumValueResponse].
  /// [value] Property value
  AuthenticationTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthenticationTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

