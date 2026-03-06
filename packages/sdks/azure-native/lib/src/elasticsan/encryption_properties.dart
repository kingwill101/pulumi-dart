// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity.dart';
import 'key_vault_properties.dart';

/// The encryption settings on the volume group.
class EncryptionProperties {
  /// The identity to be used with service-side encryption at rest.
  final pulumi.Input<EncryptionIdentity>? encryptionIdentity;
  /// Properties provided by key vault.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;

  /// Creates a new [EncryptionProperties].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keyVaultProperties] Properties provided by key vault.
  const EncryptionProperties({
    this.encryptionIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(encryptionIdentity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      encryptionIdentity: (() { final guardedValue = map['encryptionIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

