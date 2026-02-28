// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationResponse {
  /// This is always `sql#diskEncryptionConfiguration`.
  final String kind;

  /// Resource name of KMS key for disk encryption
  final String kmsKeyName;

  /// Creates a new [DiskEncryptionConfigurationResponse].
  /// [kind] This is always `sql#diskEncryptionConfiguration`.
  /// [kmsKeyName] Resource name of KMS key for disk encryption
  DiskEncryptionConfigurationResponse({
    required this.kind,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory DiskEncryptionConfigurationResponse.fromMap(
      Map<String, dynamic> map) {
    return DiskEncryptionConfigurationResponse(
      kind: map['kind'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
