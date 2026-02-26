// ignore_for_file: unused_element, unnecessary_cast

class GetSnapshotSourceDiskEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKeySelfLink;

  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final String kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String rawKey;

  /// Specifies an encryption key stored in Google Cloud KMS, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String rsaEncryptedKey;

  GetSnapshotSourceDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    map['rawKey'] = rawKey;
    map['rsaEncryptedKey'] = rsaEncryptedKey;
    return map;
  }

  factory GetSnapshotSourceDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotSourceDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] as String,
    );
  }
}
