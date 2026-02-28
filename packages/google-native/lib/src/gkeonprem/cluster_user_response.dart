// ignore_for_file: unused_element, unnecessary_cast

/// ClusterUser configures user principals for an RBAC policy.
class ClusterUserResponse {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [ClusterUserResponse].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  ClusterUserResponse({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory ClusterUserResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUserResponse(
      username: map['username'] as String,
    );
  }
}
