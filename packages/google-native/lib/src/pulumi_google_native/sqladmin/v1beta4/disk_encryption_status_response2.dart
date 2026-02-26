// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption status for an instance.
class DiskEncryptionStatusResponse2 {
  /// This is always `sql#diskEncryptionStatus`.
  final String kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  final String kmsKeyVersionName;

  DiskEncryptionStatusResponse2({
    required this.kind,
    required this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['kmsKeyVersionName'] = kmsKeyVersionName;
    return map;
  }

  factory DiskEncryptionStatusResponse2.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatusResponse2(
      kind: map['kind'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] as String,
    );
  }
}
