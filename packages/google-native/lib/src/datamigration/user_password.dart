// ignore_for_file: unused_element, unnecessary_cast


/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPassword {
  /// The initial password for the user.
  final String? password;
  /// The database username.
  final String? user;

  /// Creates a new [UserPassword].
  /// [password] The initial password for the user.
  /// [user] The database username.
  UserPassword({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory UserPassword.fromMap(Map<String, dynamic> map) {
    return UserPassword(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

