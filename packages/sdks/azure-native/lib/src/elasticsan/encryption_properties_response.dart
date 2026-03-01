// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_identity_response.dart';
import 'key_vault_properties_response.dart';

/// The encryption settings on the volume group.
class EncryptionPropertiesResponse {
  /// The identity to be used with service-side encryption at rest.
  final EncryptionIdentityResponse? encryptionIdentity;
  /// Properties provided by key vault.
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keyVaultProperties] Properties provided by key vault.
  EncryptionPropertiesResponse({
    this.encryptionIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity': ?encryptionIdentity == null ? null : encryptionIdentity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      encryptionIdentity: map['encryptionIdentity'] == null ? null : EncryptionIdentityResponse.fromMap((map['encryptionIdentity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

