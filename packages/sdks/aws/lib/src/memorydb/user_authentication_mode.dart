// ignore_for_file: unused_element, unnecessary_cast


class UserAuthenticationMode {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final int? passwordCount;
  /// Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  final List<String>? passwords;
  /// Specifies the authentication type. Valid values are: `password` or `iam`.
  final String type;

  /// Creates a new [UserAuthenticationMode].
  /// [passwordCount] Number of passwords belonging to the user if `type` is set to `password`.
  /// [passwords] Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  /// [type] Specifies the authentication type. Valid values are: `password` or `iam`.
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
      passwordCount: map['passwordCount'] == null ? null : map['passwordCount'] as int,
      passwords: map['passwords'] == null ? null : (map['passwords'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

