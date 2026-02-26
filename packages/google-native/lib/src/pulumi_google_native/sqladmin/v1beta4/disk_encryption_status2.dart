// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption status for an instance.
class DiskEncryptionStatus2 {
  /// This is always `sql#diskEncryptionStatus`.
  final String? kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  final String? kmsKeyVersionName;

  DiskEncryptionStatus2({
    this.kind,
    this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final kmsKeyVersionNameValue = kmsKeyVersionName;
    if (kmsKeyVersionNameValue != null) {
      map['kmsKeyVersionName'] = kmsKeyVersionNameValue;
    }
    return map;
  }

  factory DiskEncryptionStatus2.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatus2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] == null
          ? null
          : map['kmsKeyVersionName'] as String,
    );
  }
}
