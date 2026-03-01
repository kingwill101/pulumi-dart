// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_signing_key_parameters_response.dart';

/// Url signing key
class UrlSigningKeyResponse {
  /// Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  final String keyId;
  /// Defines the parameters for using customer key vault for Url Signing Key.
  final KeyVaultSigningKeyParametersResponse keySourceParameters;

  /// Creates a new [UrlSigningKeyResponse].
  /// [keyId] Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  /// [keySourceParameters] Defines the parameters for using customer key vault for Url Signing Key.
  UrlSigningKeyResponse({
    required this.keyId,
    required this.keySourceParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keySourceParameters': keySourceParameters.toMap(),
    };
  }

  factory UrlSigningKeyResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningKeyResponse(
      keyId: map['keyId'] as String,
      keySourceParameters: KeyVaultSigningKeyParametersResponse.fromMap((map['keySourceParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

