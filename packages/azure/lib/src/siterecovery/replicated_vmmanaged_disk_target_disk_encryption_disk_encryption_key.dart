// ignore_for_file: unused_element, unnecessary_cast


class ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey {
  /// The URL to the Key Vault Secret used as the Disk Encryption Key that the Managed Disk will be associated with. This can be found as `id` on the `azure.keyvault.Secret` resource. Changing this forces a new resource to be created.
  final String secretUrl;
  /// The ID of the Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource. Changing this forces a new resource to be created.
  final String vaultId;

  /// Creates a new [ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey].
  /// [secretUrl] The URL to the Key Vault Secret used as the Disk Encryption Key that the Managed Disk will be associated with. This can be found as `id` on the `azure.keyvault.Secret` resource. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource. Changing this forces a new resource to be created.
  ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey({
    required this.secretUrl,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'vaultId': vaultId,
    };
  }

  factory ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey(
      secretUrl: map['secretUrl'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

