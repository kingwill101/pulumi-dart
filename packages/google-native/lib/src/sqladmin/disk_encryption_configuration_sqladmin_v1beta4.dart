// ignore_for_file: unused_element, unnecessary_cast


/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationSqladminV1beta4 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final String? kind;
  /// Resource name of KMS key for disk encryption
  final String? kmsKeyName;

  /// Creates a new [DiskEncryptionConfigurationSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionConfiguration`.
  /// [kmsKeyName] Resource name of KMS key for disk encryption
  DiskEncryptionConfigurationSqladminV1beta4({
    this.kind,
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory DiskEncryptionConfigurationSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfigurationSqladminV1beta4(
      kind: map['kind'] == null ? null : map['kind'] as String,
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}

