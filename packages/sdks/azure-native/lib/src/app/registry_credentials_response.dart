// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App Private Registry
class RegistryCredentialsResponse {
  /// A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  final pulumi.Input<String?>? identity;
  /// The name of the Secret that contains the registry login password
  final pulumi.Input<String?>? passwordSecretRef;
  /// Container Registry Server
  final pulumi.Input<String?>? server;
  /// Container Registry Username
  final pulumi.Input<String?>? username;

  /// Creates a new [RegistryCredentialsResponse].
  /// [identity] A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  /// [passwordSecretRef] The name of the Secret that contains the registry login password
  /// [server] Container Registry Server
  /// [username] Container Registry Username
  const RegistryCredentialsResponse({
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

  factory RegistryCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialsResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretRef: (() { final guardedValue = map['passwordSecretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
