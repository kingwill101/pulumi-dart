// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication configuration of a cluster.
class ServerGroupClusterAuthConfigResponse {
  final pulumi.Input<String>? activeDirectoryAuth;
  final pulumi.Input<String>? passwordAuth;

  /// Creates a new [ServerGroupClusterAuthConfigResponse].
  /// [activeDirectoryAuth] Optional.
  /// [passwordAuth] Optional.
  ServerGroupClusterAuthConfigResponse({
    this.activeDirectoryAuth,
    this.passwordAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuth': ?activeDirectoryAuth,
      'passwordAuth': ?passwordAuth,
    };
  }

  factory ServerGroupClusterAuthConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerGroupClusterAuthConfigResponse(
      activeDirectoryAuth: (() {
        final guardedValue = map['activeDirectoryAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passwordAuth: (() {
        final guardedValue = map['passwordAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
