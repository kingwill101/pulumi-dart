// ignore_for_file: unused_element, unnecessary_cast


/// Authentication configuration of a cluster.
class ServerGroupClusterAuthConfig {
  final String? activeDirectoryAuth;
  final String? passwordAuth;

  /// Creates a new [ServerGroupClusterAuthConfig].
  /// [activeDirectoryAuth] Optional.
  /// [passwordAuth] Optional.
  ServerGroupClusterAuthConfig({
    this.activeDirectoryAuth,
    this.passwordAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuth': ?activeDirectoryAuth,
      'passwordAuth': ?passwordAuth,
    };
  }

  factory ServerGroupClusterAuthConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupClusterAuthConfig(
      activeDirectoryAuth: map['activeDirectoryAuth'] == null ? null : map['activeDirectoryAuth'] as String,
      passwordAuth: map['passwordAuth'] == null ? null : map['passwordAuth'] as String,
    );
  }
}

