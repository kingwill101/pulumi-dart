// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret Configuration definition.
class SecretConfiguration {
  /// Secret Uri.
  /// Sample Uri : https://myvault.vault.azure.net/secrets/mysecretname/secretversion
  final pulumi.Input<String?>? uri;
  /// Name of secret in workspace key vault.
  final pulumi.Input<String?>? workspaceSecretName;

  /// Creates a new [SecretConfiguration].
  /// [uri] Secret Uri.
  /// [workspaceSecretName] Name of secret in workspace key vault.
  const SecretConfiguration({
    this.uri,
    this.workspaceSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
      'workspaceSecretName': ?workspaceSecretName,
    };
  }

  factory SecretConfiguration.fromMap(Map<String, dynamic> map) {
    return SecretConfiguration(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceSecretName: (() { final guardedValue = map['workspaceSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
