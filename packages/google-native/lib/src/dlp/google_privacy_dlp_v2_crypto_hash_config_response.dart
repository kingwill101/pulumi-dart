// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_crypto_key_response.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https://cloud.google.com/dlp/docs/pseudonymization to learn more.
class GooglePrivacyDlpV2CryptoHashConfigResponse {
  /// The key used by the hash function.
  final GooglePrivacyDlpV2CryptoKeyResponse cryptoKey;

  /// Creates a new [GooglePrivacyDlpV2CryptoHashConfigResponse].
  /// [cryptoKey] The key used by the hash function.
  GooglePrivacyDlpV2CryptoHashConfigResponse({required this.cryptoKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cryptoKey': cryptoKey.toMap()};
  }

  factory GooglePrivacyDlpV2CryptoHashConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2CryptoHashConfigResponse(
      cryptoKey: GooglePrivacyDlpV2CryptoKeyResponse.fromMap(
        (map['cryptoKey'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
