// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration of a cluster.
class ServerGroupClusterAuthConfig {
  final pulumi.Input<String>? activeDirectoryAuth;
  final pulumi.Input<String>? passwordAuth;

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
      activeDirectoryAuth: map['activeDirectoryAuth'] == null ? null : (map['activeDirectoryAuth']! as String).input(),
      passwordAuth: map['passwordAuth'] == null ? null : (map['passwordAuth']! as String).input(),
    );
  }
}

