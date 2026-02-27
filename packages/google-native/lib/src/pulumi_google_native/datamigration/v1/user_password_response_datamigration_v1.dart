// ignore_for_file: unused_element, unnecessary_cast

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordResponseDatamigrationV1 {
  /// The initial password for the user.
  final String password;

  /// Indicates if the initial_user.password field has been set.
  final bool passwordSet;

  /// The database username.
  final String user;

  UserPasswordResponseDatamigrationV1({
    required this.password,
    required this.passwordSet,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['passwordSet'] = passwordSet;
    map['user'] = user;
    return map;
  }

  factory UserPasswordResponseDatamigrationV1.fromMap(
      Map<String, dynamic> map) {
    return UserPasswordResponseDatamigrationV1(
      password: map['password'] as String,
      passwordSet: map['passwordSet'] as bool,
      user: map['user'] as String,
    );
  }
}
