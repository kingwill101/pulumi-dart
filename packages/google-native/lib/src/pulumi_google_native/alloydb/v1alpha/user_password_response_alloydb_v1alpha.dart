// ignore_for_file: unused_element, unnecessary_cast

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordResponseAlloydbV1alpha {
  /// The initial password for the user.
  final String password;

  /// The database username.
  final String user;

  UserPasswordResponseAlloydbV1alpha({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory UserPasswordResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponseAlloydbV1alpha(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
