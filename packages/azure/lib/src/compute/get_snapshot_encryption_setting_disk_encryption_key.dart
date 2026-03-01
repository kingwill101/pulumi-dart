// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotEncryptionSettingDiskEncryptionKey {
  final String secretUrl;
  final String sourceVaultId;

  /// Creates a new [GetSnapshotEncryptionSettingDiskEncryptionKey].
  /// [secretUrl] Required.
  /// [sourceVaultId] Required.
  GetSnapshotEncryptionSettingDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetSnapshotEncryptionSettingDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotEncryptionSettingDiskEncryptionKey(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

