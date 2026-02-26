// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  GetRegionInstanceTemplateDiskDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeySelfLink'] = kmsKeySelfLink;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    return map;
  }

  factory GetRegionInstanceTemplateDiskDiskEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
    );
  }
}
