// ignore_for_file: unused_element, unnecessary_cast

class UserAuthenticationMode {
  final int? passwordCount;

  /// Specifies the passwords to use for authentication if `type` is set to `password`.
  final List<String>? passwords;

  /// Specifies the authentication type. Possible options are: `password`, `no-password-required` or `iam`.
  final String type;

  /// Creates a new [UserAuthenticationMode].
  /// [passwordCount] Optional.
  /// [passwords] Specifies the passwords to use for authentication if `type` is set to `password`.
  /// [type] Specifies the authentication type. Possible options are: `password`, `no-password-required` or `iam`.
  UserAuthenticationMode({
    this.passwordCount,
    this.passwords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': ?passwordCount,
      'passwords': ?passwords,
      'type': type,
    };
  }

  factory UserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return UserAuthenticationMode(
      passwordCount: map['passwordCount'] == null
          ? null
          : map['passwordCount'] as int,
      passwords: map['passwords'] == null
          ? null
          : (map['passwords'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
