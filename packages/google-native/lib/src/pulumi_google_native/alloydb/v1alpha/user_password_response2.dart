// ignore_for_file: unused_element, unnecessary_cast

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordResponse2 {
  /// The initial password for the user.
  final String password;

  /// The database username.
  final String user;

  UserPasswordResponse2({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory UserPasswordResponse2.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponse2(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
