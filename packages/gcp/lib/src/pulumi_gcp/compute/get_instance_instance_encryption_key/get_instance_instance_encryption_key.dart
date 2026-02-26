// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceInstanceEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS.
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  /// The SHA256 hash of the customer's encryption key.
  final String sha256;

  GetInstanceInstanceEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    map['sha256'] = sha256;
    return map;
  }

  factory GetInstanceInstanceEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetInstanceInstanceEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
      sha256: map['sha256'] as String,
    );
  }
}
