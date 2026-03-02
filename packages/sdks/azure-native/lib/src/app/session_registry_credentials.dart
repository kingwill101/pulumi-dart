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
  SessionRegistryCredentials({
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
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      passwordSecretRef: map['passwordSecretRef'] == null ? null : (map['passwordSecretRef'] as String).input(),
      server: map['server'] == null ? null : (map['server'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

