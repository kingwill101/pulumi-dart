// ignore_for_file: unused_element, unnecessary_cast


class ClusterInitialUser {
  /// The initial password for the user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;
  /// The database username.
  final String? user;

  /// Creates a new [ClusterInitialUser].
  /// [password] The initial password for the user.
  /// [user] The database username.
  ClusterInitialUser({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory ClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return ClusterInitialUser(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

