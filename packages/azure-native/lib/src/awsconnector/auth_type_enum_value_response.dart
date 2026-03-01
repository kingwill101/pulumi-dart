// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AuthTypeEnumValue
class AuthTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AuthTypeEnumValueResponse].
  /// [value] Property value
  AuthTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AuthTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

