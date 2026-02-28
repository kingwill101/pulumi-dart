// ignore_for_file: unused_element, unnecessary_cast

class ClusterAuthorizationAdminUsers {
  /// An active Google username.
  final String username;

  /// Creates a new [ClusterAuthorizationAdminUsers].
  /// [username] An active Google username.
  ClusterAuthorizationAdminUsers({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory ClusterAuthorizationAdminUsers.fromMap(Map<String, dynamic> map) {
    return ClusterAuthorizationAdminUsers(
      username: map['username'] as String,
    );
  }
}
