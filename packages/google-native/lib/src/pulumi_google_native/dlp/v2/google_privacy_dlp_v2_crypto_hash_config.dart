// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_crypto_key.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https://cloud.google.com/dlp/docs/pseudonymization to learn more.
class GooglePrivacyDlpV2CryptoHashConfig {
  /// The key used by the hash function.
  final GooglePrivacyDlpV2CryptoKey? cryptoKey;

  GooglePrivacyDlpV2CryptoHashConfig({
    this.cryptoKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyValue = cryptoKey;
    if (cryptoKeyValue != null) {
      map['cryptoKey'] = cryptoKeyValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2CryptoHashConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CryptoHashConfig(
      cryptoKey: map['cryptoKey'] == null
          ? null
          : GooglePrivacyDlpV2CryptoKey.fromMap(
              (map['cryptoKey'] as Map).cast<String, dynamic>()),
    );
  }
}
