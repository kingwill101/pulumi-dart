// ignore_for_file: unused_element, unnecessary_cast


/// Container App Secret.
class ContainerAppSecretResponse {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final String identity;
  /// Azure Key Vault URL pointing to the secret referenced by the container app.
  final String keyVaultUrl;
  /// Secret Name.
  final String name;
  /// Secret Value.
  final String value;

  /// Creates a new [ContainerAppSecretResponse].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] Azure Key Vault URL pointing to the secret referenced by the container app.
  /// [name] Secret Name.
  /// [value] Secret Value.
  ContainerAppSecretResponse({
    required this.identity,
    required this.keyVaultUrl,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'keyVaultUrl': keyVaultUrl,
      'name': name,
      'value': value,
    };
  }

  factory ContainerAppSecretResponse.fromMap(Map<String, dynamic> map) {
    return ContainerAppSecretResponse(
      identity: map['identity'] as String,
      keyVaultUrl: map['keyVaultUrl'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

