// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption configuration for an instance.
class DiskEncryptionConfiguration2 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final String? kind;

  /// Resource name of KMS key for disk encryption
  final String? kmsKeyName;

  DiskEncryptionConfiguration2({
    this.kind,
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory DiskEncryptionConfiguration2.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfiguration2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
