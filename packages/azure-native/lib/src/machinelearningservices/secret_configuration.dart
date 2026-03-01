// ignore_for_file: unused_element, unnecessary_cast


/// Secret Configuration definition.
class SecretConfiguration {
  /// Secret Uri.
  /// Sample Uri : https://myvault.vault.azure.net/secrets/mysecretname/secretversion
  final String? uri;
  /// Name of secret in workspace key vault.
  final String? workspaceSecretName;

  /// Creates a new [SecretConfiguration].
  /// [uri] Secret Uri.
  /// [workspaceSecretName] Name of secret in workspace key vault.
  SecretConfiguration({
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
      uri: map['uri'] == null ? null : map['uri'] as String,
      workspaceSecretName: map['workspaceSecretName'] == null ? null : map['workspaceSecretName'] as String,
    );
  }
}

