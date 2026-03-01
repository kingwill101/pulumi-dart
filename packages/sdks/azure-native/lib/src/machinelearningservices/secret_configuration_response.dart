// ignore_for_file: unused_element, unnecessary_cast


/// Secret Configuration definition.
class SecretConfigurationResponse {
  /// Secret Uri.
  /// Sample Uri : https://myvault.vault.azure.net/secrets/mysecretname/secretversion
  final String? uri;
  /// Name of secret in workspace key vault.
  final String? workspaceSecretName;

  /// Creates a new [SecretConfigurationResponse].
  /// [uri] Secret Uri.
  /// [workspaceSecretName] Name of secret in workspace key vault.
  SecretConfigurationResponse({
    this.uri,
    this.workspaceSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
      'workspaceSecretName': ?workspaceSecretName,
    };
  }

  factory SecretConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SecretConfigurationResponse(
      uri: map['uri'] == null ? null : map['uri'] as String,
      workspaceSecretName: map['workspaceSecretName'] == null ? null : map['workspaceSecretName'] as String,
    );
  }
}

