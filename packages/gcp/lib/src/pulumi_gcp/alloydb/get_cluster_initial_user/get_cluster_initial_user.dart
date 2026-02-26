// ignore_for_file: unused_element, unnecessary_cast

class GetClusterInitialUser {
  /// The initial password for the user.
  final String password;

  /// The database username.
  final String user;

  GetClusterInitialUser({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory GetClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return GetClusterInitialUser(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
