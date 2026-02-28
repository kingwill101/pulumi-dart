// ignore_for_file: unused_element, unnecessary_cast

/// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the project's Cloud Healthcare Service Agent service account. For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key).
class KmsWrappedCryptoKeyHealthcareV1beta1 {
  /// The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  final String cryptoKey;

  /// The wrapped data crypto key.
  final String wrappedKey;

  /// Creates a new [KmsWrappedCryptoKeyHealthcareV1beta1].
  /// [cryptoKey] The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  /// [wrappedKey] The wrapped data crypto key.
  KmsWrappedCryptoKeyHealthcareV1beta1({
    required this.cryptoKey,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    map['wrappedKey'] = wrappedKey;
    return map;
  }

  factory KmsWrappedCryptoKeyHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return KmsWrappedCryptoKeyHealthcareV1beta1(
      cryptoKey: map['cryptoKey'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}
