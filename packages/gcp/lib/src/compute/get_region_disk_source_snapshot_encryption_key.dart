// ignore_for_file: unused_element, unnecessary_cast

class GetRegionDiskSourceSnapshotEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKeyName;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String rawKey;

  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final String sha256;

  /// Creates a new [GetRegionDiskSourceSnapshotEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  GetRegionDiskSourceSnapshotEncryptionKey({
    required this.kmsKeyName,
    required this.rawKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    map['rawKey'] = rawKey;
    map['sha256'] = sha256;
    return map;
  }

  factory GetRegionDiskSourceSnapshotEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return GetRegionDiskSourceSnapshotEncryptionKey(
      kmsKeyName: map['kmsKeyName'] as String,
      rawKey: map['rawKey'] as String,
      sha256: map['sha256'] as String,
    );
  }
}
