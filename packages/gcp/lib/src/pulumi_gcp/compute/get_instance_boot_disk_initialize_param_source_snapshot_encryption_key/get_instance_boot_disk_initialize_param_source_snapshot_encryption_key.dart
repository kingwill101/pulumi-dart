// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String rsaEncryptedKey;

  /// The SHA256 hash of the encryption key used to encrypt this disk.
  final String sha256;

  GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    map['rawKey'] = rawKey;
    map['rsaEncryptedKey'] = rsaEncryptedKey;
    map['sha256'] = sha256;
    return map;
  }

  factory GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] as String,
      sha256: map['sha256'] as String,
    );
  }
}
