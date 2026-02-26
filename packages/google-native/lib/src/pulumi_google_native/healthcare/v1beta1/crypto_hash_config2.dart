// ignore_for_file: unused_element, unnecessary_cast

import 'kms_wrapped_crypto_key2.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output. For example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`.
class CryptoHashConfig2 {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither crypto_key nor kms_wrapped is specified. Must not be set if kms_wrapped is set.
  final String? cryptoKey;

  /// KMS wrapped key. Must not be set if crypto_key is set.
  final KmsWrappedCryptoKey2? kmsWrapped;

  CryptoHashConfig2({
    this.cryptoKey,
    this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyValue = cryptoKey;
    if (cryptoKeyValue != null) {
      map['cryptoKey'] = cryptoKeyValue;
    }
    final kmsWrappedValue = kmsWrapped;
    if (kmsWrappedValue != null) {
      map['kmsWrapped'] = kmsWrappedValue.toMap();
    }
    return map;
  }

  factory CryptoHashConfig2.fromMap(Map<String, dynamic> map) {
    return CryptoHashConfig2(
      cryptoKey: map['cryptoKey'] == null ? null : map['cryptoKey'] as String,
      kmsWrapped: map['kmsWrapped'] == null
          ? null
          : KmsWrappedCryptoKey2.fromMap(
              (map['kmsWrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
