// ignore_for_file: unused_element, unnecessary_cast


/// The password that will be used for authenticating the token of a container registry.
class TokenPasswordResponse {
  /// The creation datetime of the password.
  final String? creationTime;
  /// The expiry datetime of the password.
  final String? expiry;
  /// The password name "password1" or "password2"
  final String? name;
  /// The password value.
  final String value;

  /// Creates a new [TokenPasswordResponse].
  /// [creationTime] The creation datetime of the password.
  /// [expiry] The expiry datetime of the password.
  /// [name] The password name "password1" or "password2"
  /// [value] The password value.
  TokenPasswordResponse({
    this.creationTime,
    this.expiry,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'expiry': ?expiry,
      'name': ?name,
      'value': value,
    };
  }

  factory TokenPasswordResponse.fromMap(Map<String, dynamic> map) {
    return TokenPasswordResponse(
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] as String,
    );
  }
}

