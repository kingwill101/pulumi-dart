// ignore_for_file: unused_element, unnecessary_cast


class ManagedDiskEncryptionSettingsKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  final String keyUrl;
  /// The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  final String sourceVaultId;

  /// Creates a new [ManagedDiskEncryptionSettingsKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key. This can be found as `id` on the `azure.keyvault.Key` resource.
  /// [sourceVaultId] The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  ManagedDiskEncryptionSettingsKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory ManagedDiskEncryptionSettingsKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionSettingsKeyEncryptionKey(
      keyUrl: map['keyUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

