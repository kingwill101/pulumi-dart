// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Session pool private registry credentials.
class SessionRegistryCredentials {
  /// A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  final pulumi.Input<String>? identity;
  /// The name of the secret that contains the registry login password
  final pulumi.Input<String>? passwordSecretRef;
  /// Container registry server.
  final pulumi.Input<String>? server;
  /// Container registry username.
  final pulumi.Input<String>? username;

  /// Creates a new [SessionRegistryCredentials].
  /// [identity] A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  /// [passwordSecretRef] The name of the secret that contains the registry login password
  /// [server] Container registry server.
  /// [username] Container registry username.
  const SessionRegistryCredentials({
    this.identity,
    this.passwordSecretRef,
    this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'passwordSecretRef': ?passwordSecretRef,
      'server': ?server,
      'username': ?username,
    };
  }

  factory SessionRegistryCredentials.fromMap(Map<String, dynamic> map) {
    return SessionRegistryCredentials(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretRef: (() { final guardedValue = map['passwordSecretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

