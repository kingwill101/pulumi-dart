// ignore_for_file: unused_element, unnecessary_cast

class UserAuthenticationModeMemorydb {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final int? passwordCount;

  /// Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  final List<String>? passwords;

  /// Specifies the authentication type. Valid values are: `password` or `iam`.
  final String type;

  UserAuthenticationModeMemorydb({
    this.passwordCount,
    this.passwords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordCountValue = passwordCount;
    if (passwordCountValue != null) {
      map['passwordCount'] = passwordCountValue;
    }
    final passwordsValue = passwords;
    if (passwordsValue != null) {
      map['passwords'] = passwordsValue;
    }
    map['type'] = type;
    return map;
  }

  factory UserAuthenticationModeMemorydb.fromMap(Map<String, dynamic> map) {
    return UserAuthenticationModeMemorydb(
      passwordCount:
          map['passwordCount'] == null ? null : map['passwordCount'] as int,
      passwords: map['passwords'] == null
          ? null
          : (map['passwords'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
