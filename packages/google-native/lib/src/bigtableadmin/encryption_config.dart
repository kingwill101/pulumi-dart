// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
class EncryptionConfig {
  /// Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfig].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  EncryptionConfig({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
