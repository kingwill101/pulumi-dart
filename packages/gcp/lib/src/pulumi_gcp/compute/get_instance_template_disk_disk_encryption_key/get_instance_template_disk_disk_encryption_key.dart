// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  GetInstanceTemplateDiskDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    return map;
  }

  factory GetInstanceTemplateDiskDiskEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
    );
  }
}
