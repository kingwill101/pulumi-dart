// ignore_for_file: unused_element, unnecessary_cast

/// Disk encryption status for an instance.
class DiskEncryptionStatusSqladminV1beta4 {
  /// This is always `sql#diskEncryptionStatus`.
  final String? kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  final String? kmsKeyVersionName;

  /// Creates a new [DiskEncryptionStatusSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionStatus`.
  /// [kmsKeyVersionName] KMS key version used to encrypt the Cloud SQL instance resource
  DiskEncryptionStatusSqladminV1beta4({this.kind, this.kmsKeyVersionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'kmsKeyVersionName': ?kmsKeyVersionName,
    };
  }

  factory DiskEncryptionStatusSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskEncryptionStatusSqladminV1beta4(
      kind: map['kind'] == null ? null : map['kind'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] == null
          ? null
          : map['kmsKeyVersionName'] as String,
    );
  }
}
