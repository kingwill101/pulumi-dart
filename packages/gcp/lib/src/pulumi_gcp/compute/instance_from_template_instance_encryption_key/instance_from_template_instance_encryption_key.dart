// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateInstanceEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS.
  final String? kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? kmsKeyServiceAccount;

  /// The SHA256 hash of the customer's encryption key.
  final String? sha256;

  InstanceFromTemplateInstanceEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeySelfLinkValue = kmsKeySelfLink;
    if (kmsKeySelfLinkValue != null) {
      map['kmsKeySelfLink'] = kmsKeySelfLinkValue;
    }
    final kmsKeyServiceAccountValue = kmsKeyServiceAccount;
    if (kmsKeyServiceAccountValue != null) {
      map['kmsKeyServiceAccount'] = kmsKeyServiceAccountValue;
    }
    final sha256Value = sha256;
    if (sha256Value != null) {
      map['sha256'] = sha256Value;
    }
    return map;
  }

  factory InstanceFromTemplateInstanceEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromTemplateInstanceEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
