// ignore_for_file: unused_element, unnecessary_cast


class SnapshotPolicyCopyEncryptionConfiguration {
  final bool? encrypted;
  final String? kmsKeyId;

  /// Creates a new [SnapshotPolicyCopyEncryptionConfiguration].
  /// [encrypted] Optional.
  /// [kmsKeyId] Optional.
  SnapshotPolicyCopyEncryptionConfiguration({
    this.encrypted,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory SnapshotPolicyCopyEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyCopyEncryptionConfiguration(
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

