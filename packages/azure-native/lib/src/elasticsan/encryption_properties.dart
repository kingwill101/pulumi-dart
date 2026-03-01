// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_identity.dart';
import 'key_vault_properties.dart';

/// The encryption settings on the volume group.
class EncryptionProperties {
  /// The identity to be used with service-side encryption at rest.
  final EncryptionIdentity? encryptionIdentity;
  /// Properties provided by key vault.
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionProperties].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keyVaultProperties] Properties provided by key vault.
  EncryptionProperties({
    this.encryptionIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity': ?encryptionIdentity == null ? null : encryptionIdentity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      encryptionIdentity: map['encryptionIdentity'] == null ? null : EncryptionIdentity.fromMap((map['encryptionIdentity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

