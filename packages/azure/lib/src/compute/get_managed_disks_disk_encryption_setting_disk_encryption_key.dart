// ignore_for_file: unused_element, unnecessary_cast


class GetManagedDisksDiskEncryptionSettingDiskEncryptionKey {
  /// The URL to the Key Vault Secret used as the Disk Encryption Key.
  final String secretUrl;
  /// The ID of the source Key Vault.
  final String sourceVaultId;

  /// Creates a new [GetManagedDisksDiskEncryptionSettingDiskEncryptionKey].
  /// [secretUrl] The URL to the Key Vault Secret used as the Disk Encryption Key.
  /// [sourceVaultId] The ID of the source Key Vault.
  GetManagedDisksDiskEncryptionSettingDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetManagedDisksDiskEncryptionSettingDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDiskEncryptionSettingDiskEncryptionKey(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

