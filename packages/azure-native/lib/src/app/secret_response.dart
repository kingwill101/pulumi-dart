// ignore_for_file: unused_element, unnecessary_cast


/// Secret definition.
class SecretResponse {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final String? identity;
  /// Azure Key Vault URL pointing to the secret referenced by the container app.
  final String? keyVaultUrl;
  /// Secret Name.
  final String? name;

  /// Creates a new [SecretResponse].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] Azure Key Vault URL pointing to the secret referenced by the container app.
  /// [name] Secret Name.
  SecretResponse({
    this.identity,
    this.keyVaultUrl,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

