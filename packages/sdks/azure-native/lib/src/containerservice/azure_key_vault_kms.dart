// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Key Vault key management service settings for the security profile.
class AzureKeyVaultKms {
  /// Whether to enable Azure Key Vault key management service. The default is false.
  final pulumi.Input<bool?>? enabled;
  /// Identifier of Azure Key Vault key. See [key identifier format](https://docs.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier. When Azure Key Vault key management service is disabled, leave the field empty.
  final pulumi.Input<String?>? keyId;
  /// Network access of the key vault. Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. The default value is `Public`.
  final pulumi.Input<dynamic>? keyVaultNetworkAccess;
  /// Resource ID of key vault. When keyVaultNetworkAccess is `Private`, this field is required and must be a valid resource ID. When keyVaultNetworkAccess is `Public`, leave the field empty.
  final pulumi.Input<String?>? keyVaultResourceId;

  /// Creates a new [AzureKeyVaultKms].
  /// [enabled] Whether to enable Azure Key Vault key management service. The default is false.
  /// [keyId] Identifier of Azure Key Vault key. See [key identifier format](https://docs.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier. When Azure Key Vault key management service is disabled, leave the field empty.
  /// [keyVaultNetworkAccess] Network access of the key vault. Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. The default value is `Public`.
  /// [keyVaultResourceId] Resource ID of key vault. When keyVaultNetworkAccess is `Private`, this field is required and must be a valid resource ID. When keyVaultNetworkAccess is `Public`, leave the field empty.
  AzureKeyVaultKms({
    this.enabled,
    this.keyId,
    pulumi.Input<dynamic>? keyVaultNetworkAccess,
    this.keyVaultResourceId,
  }) : keyVaultNetworkAccess = keyVaultNetworkAccess ?? pulumi.Input.fromValue('Public');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyId': ?keyId,
      'keyVaultNetworkAccess': ?keyVaultNetworkAccess,
      'keyVaultResourceId': ?keyVaultResourceId,
    };
  }

  factory AzureKeyVaultKms.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultKms(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultNetworkAccess: (() { final guardedValue = map['keyVaultNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyVaultResourceId: (() { final guardedValue = map['keyVaultResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
