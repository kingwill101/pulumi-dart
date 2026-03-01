// ignore_for_file: unused_element, unnecessary_cast

/// ClusterUser configures user principals for an RBAC policy.
class ClusterUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [ClusterUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  ClusterUser({required this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'username': username};
  }

  factory ClusterUser.fromMap(Map<String, dynamic> map) {
    return ClusterUser(username: map['username'] as String);
  }
}
