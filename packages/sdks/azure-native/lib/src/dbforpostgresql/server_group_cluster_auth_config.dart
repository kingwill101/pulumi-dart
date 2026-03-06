// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration of a cluster.
class ServerGroupClusterAuthConfig {
  final pulumi.Input<String>? activeDirectoryAuth;
  final pulumi.Input<String>? passwordAuth;

  /// Creates a new [ServerGroupClusterAuthConfig].
  /// [activeDirectoryAuth] Optional.
  /// [passwordAuth] Optional.
  const ServerGroupClusterAuthConfig({
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
      activeDirectoryAuth: (() { final guardedValue = map['activeDirectoryAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordAuth: (() { final guardedValue = map['passwordAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

