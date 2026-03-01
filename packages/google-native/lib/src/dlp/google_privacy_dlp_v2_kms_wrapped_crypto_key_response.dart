// ignore_for_file: unused_element, unnecessary_cast

/// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key). Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).
class GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  final String cryptoKeyName;

  /// The wrapped data crypto key.
  final String wrappedKey;

  /// Creates a new [GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse].
  /// [cryptoKeyName] The resource name of the KMS CryptoKey to use for unwrapping.
  /// [wrappedKey] The wrapped data crypto key.
  GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
      'wrappedKey': wrappedKey,
    };
  }

  factory GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse(
      cryptoKeyName: map['cryptoKeyName'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}
