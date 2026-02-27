// ignore_for_file: unused_element, unnecessary_cast

class BillingAccountBucketConfigCmekSettings {
  /// The resource name for the configured Cloud KMS key.
  /// KMS key name format:
  /// "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]"
  /// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
  /// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
  /// See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String kmsKeyName;

  /// The CryptoKeyVersion resource name for the configured Cloud KMS key.
  /// KMS key name format:
  /// "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]"
  /// For example:
  /// "projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1"
  /// This is a read-only field used to convey the specific configured CryptoKeyVersion of kms_key that has been configured. It will be populated in cases where the CMEK settings are bound to a single key version.
  final String? kmsKeyVersionName;

  /// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  final String? name;

  /// The service account associated with a project for which CMEK will apply.
  /// Before enabling CMEK for a logging bucket, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account associated with the project for which CMEK will apply. Use [v2.getCmekSettings](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getCmekSettings#google.logging.v2.ConfigServiceV2.GetCmekSettings) to obtain the service account ID.
  /// See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String? serviceAccountId;

  BillingAccountBucketConfigCmekSettings({
    required this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    final kmsKeyVersionNameValue = kmsKeyVersionName;
    if (kmsKeyVersionNameValue != null) {
      map['kmsKeyVersionName'] = kmsKeyVersionNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final serviceAccountIdValue = serviceAccountId;
    if (serviceAccountIdValue != null) {
      map['serviceAccountId'] = serviceAccountIdValue;
    }
    return map;
  }

  factory BillingAccountBucketConfigCmekSettings.fromMap(
      Map<String, dynamic> map) {
    return BillingAccountBucketConfigCmekSettings(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] == null
          ? null
          : map['kmsKeyVersionName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      serviceAccountId: map['serviceAccountId'] == null
          ? null
          : map['serviceAccountId'] as String,
    );
  }
}
