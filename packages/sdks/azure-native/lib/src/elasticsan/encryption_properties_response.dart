// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity_response.dart';
import 'key_vault_properties_response.dart';

/// The encryption settings on the volume group.
class EncryptionPropertiesResponse {
  /// The identity to be used with service-side encryption at rest.
  final pulumi.Input<EncryptionIdentityResponse>? encryptionIdentity;
  /// Properties provided by key vault.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keyVaultProperties] Properties provided by key vault.
  EncryptionPropertiesResponse({
    this.encryptionIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentityResponse, Map<String, dynamic>>(encryptionIdentity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      encryptionIdentity: map['encryptionIdentity'] == null ? null : (EncryptionIdentityResponse.fromMap((map['encryptionIdentity']! as Map).cast<String, dynamic>())).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

