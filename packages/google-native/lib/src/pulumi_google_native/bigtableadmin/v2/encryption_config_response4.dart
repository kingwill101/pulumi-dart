// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
class EncryptionConfigResponse4 {
  /// Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  final String kmsKeyName;

  EncryptionConfigResponse4({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigResponse4.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse4(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
