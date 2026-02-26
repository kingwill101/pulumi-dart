// ignore_for_file: unused_element, unnecessary_cast

/// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the project's Cloud Healthcare Service Agent service account. For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key).
class KmsWrappedCryptoKey2 {
  /// The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  final String cryptoKey;

  /// The wrapped data crypto key.
  final String wrappedKey;

  KmsWrappedCryptoKey2({
    required this.cryptoKey,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    map['wrappedKey'] = wrappedKey;
    return map;
  }

  factory KmsWrappedCryptoKey2.fromMap(Map<String, dynamic> map) {
    return KmsWrappedCryptoKey2(
      cryptoKey: map['cryptoKey'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}
