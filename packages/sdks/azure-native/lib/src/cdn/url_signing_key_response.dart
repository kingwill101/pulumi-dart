// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_signing_key_parameters_response.dart';

/// Url signing key
class UrlSigningKeyResponse {
  /// Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  final pulumi.Input<String> keyId;
  /// Defines the parameters for using customer key vault for Url Signing Key.
  final pulumi.Input<KeyVaultSigningKeyParametersResponse> keySourceParameters;

  /// Creates a new [UrlSigningKeyResponse].
  /// [keyId] Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  /// [keySourceParameters] Defines the parameters for using customer key vault for Url Signing Key.
  const UrlSigningKeyResponse({
    required this.keyId,
    required this.keySourceParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keySourceParameters': pulumi.Input.mapInputValue<KeyVaultSigningKeyParametersResponse, Map<String, dynamic>>(keySourceParameters, (value) => value.toMap()),
    };
  }

  factory UrlSigningKeyResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningKeyResponse(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      keySourceParameters: pulumi.Input.fromValue(KeyVaultSigningKeyParametersResponse.fromMap((map['keySourceParameters']! as Map).cast<String, dynamic>())),
    );
  }
}

