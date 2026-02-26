// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationResponse2 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final String kind;

  /// Resource name of KMS key for disk encryption
  final String kmsKeyName;

  DiskEncryptionConfigurationResponse2({
    required this.kind,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory DiskEncryptionConfigurationResponse2.fromMap(
      Map<String, dynamic> map) {
    return DiskEncryptionConfigurationResponse2(
      kind: map['kind'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
