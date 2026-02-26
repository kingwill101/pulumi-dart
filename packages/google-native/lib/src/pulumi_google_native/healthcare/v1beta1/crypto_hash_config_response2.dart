// ignore_for_file: unused_element, unnecessary_cast

import 'kms_wrapped_crypto_key_response2.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output. For example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`.
class CryptoHashConfigResponse2 {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither crypto_key nor kms_wrapped is specified. Must not be set if kms_wrapped is set.
  final String cryptoKey;

  /// KMS wrapped key. Must not be set if crypto_key is set.
  final KmsWrappedCryptoKeyResponse2 kmsWrapped;

  CryptoHashConfigResponse2({
    required this.cryptoKey,
    required this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    map['kmsWrapped'] = kmsWrapped.toMap();
    return map;
  }

  factory CryptoHashConfigResponse2.fromMap(Map<String, dynamic> map) {
    return CryptoHashConfigResponse2(
      cryptoKey: map['cryptoKey'] as String,
      kmsWrapped: KmsWrappedCryptoKeyResponse2.fromMap(
          (map['kmsWrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
