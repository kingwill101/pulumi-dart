// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationResponseSqladminV1beta4 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final String kind;

  /// Resource name of KMS key for disk encryption
  final String kmsKeyName;

  DiskEncryptionConfigurationResponseSqladminV1beta4({
    required this.kind,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory DiskEncryptionConfigurationResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return DiskEncryptionConfigurationResponseSqladminV1beta4(
      kind: map['kind'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
