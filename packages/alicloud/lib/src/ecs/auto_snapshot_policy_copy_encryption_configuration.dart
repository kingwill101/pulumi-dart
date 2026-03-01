// ignore_for_file: unused_element, unnecessary_cast


class AutoSnapshotPolicyCopyEncryptionConfiguration {
  /// Whether to enable encryption for cross-region snapshot replication. Default value: `false`. Valid values: `true`, `false`.
  final bool? encrypted;
  /// The ID of the Key Management Service (KMS) key used to encrypt snapshots in cross-region snapshot replication.
  final String? kmsKeyId;

  /// Creates a new [AutoSnapshotPolicyCopyEncryptionConfiguration].
  /// [encrypted] Whether to enable encryption for cross-region snapshot replication. Default value: `false`. Valid values: `true`, `false`.
  /// [kmsKeyId] The ID of the Key Management Service (KMS) key used to encrypt snapshots in cross-region snapshot replication.
  AutoSnapshotPolicyCopyEncryptionConfiguration({
    this.encrypted,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory AutoSnapshotPolicyCopyEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyCopyEncryptionConfiguration(
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

