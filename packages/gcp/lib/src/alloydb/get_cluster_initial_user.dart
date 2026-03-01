// ignore_for_file: unused_element, unnecessary_cast

class GetClusterInitialUser {
  /// The initial password for the user.
  final String password;

  /// The database username.
  final String user;

  /// Creates a new [GetClusterInitialUser].
  /// [password] The initial password for the user.
  /// [user] The database username.
  GetClusterInitialUser({required this.password, required this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'user': user};
  }

  factory GetClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return GetClusterInitialUser(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
