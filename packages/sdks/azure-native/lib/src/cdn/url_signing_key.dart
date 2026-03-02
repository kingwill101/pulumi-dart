// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_signing_key_parameters.dart';

/// Url signing key
class UrlSigningKey {
  /// Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  final pulumi.Input<String> keyId;
  /// Defines the parameters for using customer key vault for Url Signing Key.
  final pulumi.Input<KeyVaultSigningKeyParameters> keySourceParameters;

  /// Creates a new [UrlSigningKey].
  /// [keyId] Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.
  /// [keySourceParameters] Defines the parameters for using customer key vault for Url Signing Key.
  UrlSigningKey({
    required this.keyId,
    required this.keySourceParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keySourceParameters': pulumi.Input.mapInputValue<KeyVaultSigningKeyParameters, Map<String, dynamic>>(keySourceParameters, (value) => value.toMap()),
    };
  }

  factory UrlSigningKey.fromMap(Map<String, dynamic> map) {
    return UrlSigningKey(
      keyId: (map['keyId'] as String).input(),
      keySourceParameters: (KeyVaultSigningKeyParameters.fromMap((map['keySourceParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

