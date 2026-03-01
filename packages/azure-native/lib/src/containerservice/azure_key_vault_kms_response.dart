// ignore_for_file: unused_element, unnecessary_cast


/// Azure Key Vault key management service settings for the security profile.
class AzureKeyVaultKmsResponse {
  /// Whether to enable Azure Key Vault key management service. The default is false.
  final bool? enabled;
  /// Identifier of Azure Key Vault key. See [key identifier format](https://docs.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier. When Azure Key Vault key management service is disabled, leave the field empty.
  final String? keyId;
  /// Network access of the key vault. Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. The default value is `Public`.
  final String? keyVaultNetworkAccess;
  /// Resource ID of key vault. When keyVaultNetworkAccess is `Private`, this field is required and must be a valid resource ID. When keyVaultNetworkAccess is `Public`, leave the field empty.
  final String? keyVaultResourceId;

  /// Creates a new [AzureKeyVaultKmsResponse].
  /// [enabled] Whether to enable Azure Key Vault key management service. The default is false.
  /// [keyId] Identifier of Azure Key Vault key. See [key identifier format](https://docs.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier. When Azure Key Vault key management service is disabled, leave the field empty.
  /// [keyVaultNetworkAccess] Network access of the key vault. Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. The default value is `Public`.
  /// [keyVaultResourceId] Resource ID of key vault. When keyVaultNetworkAccess is `Private`, this field is required and must be a valid resource ID. When keyVaultNetworkAccess is `Public`, leave the field empty.
  AzureKeyVaultKmsResponse({
    this.enabled,
    this.keyId,
    this.keyVaultNetworkAccess,
    this.keyVaultResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyId': ?keyId,
      'keyVaultNetworkAccess': ?keyVaultNetworkAccess,
      'keyVaultResourceId': ?keyVaultResourceId,
    };
  }

  factory AzureKeyVaultKmsResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultKmsResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      keyVaultNetworkAccess: map['keyVaultNetworkAccess'] == null ? null : map['keyVaultNetworkAccess'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : map['keyVaultResourceId'] as String,
    );
  }
}

