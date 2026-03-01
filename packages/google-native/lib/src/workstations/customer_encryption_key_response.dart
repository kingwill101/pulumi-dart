// ignore_for_file: unused_element, unnecessary_cast

/// A customer-managed encryption key (CMEK) for the Compute Engine resources of the associated workstation configuration. Specify the name of your Cloud KMS encryption key and the default service account. We recommend that you use a separate service account and follow [Cloud KMS best practices](https://cloud.google.com/kms/docs/separation-of-duties).
class CustomerEncryptionKeyResponse {
  /// Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`. The key must be in the same region as the workstation configuration.
  final String kmsKey;

  /// Immutable. The service account to use with the specified KMS key. We recommend that you use a separate service account and follow KMS best practices. For more information, see [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  final String kmsKeyServiceAccount;

  /// Creates a new [CustomerEncryptionKeyResponse].
  /// [kmsKey] Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`. The key must be in the same region as the workstation configuration.
  /// [kmsKeyServiceAccount] Immutable. The service account to use with the specified KMS key. We recommend that you use a separate service account and follow KMS best practices. For more information, see [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  CustomerEncryptionKeyResponse({
    required this.kmsKey,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
    };
  }

  factory CustomerEncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return CustomerEncryptionKeyResponse(
      kmsKey: map['kmsKey'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
    );
  }
}
