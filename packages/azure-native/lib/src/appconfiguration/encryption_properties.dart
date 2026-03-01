// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// The encryption settings for a configuration store.
class EncryptionProperties {
  /// Key vault properties.
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionProperties].
  /// [keyVaultProperties] Key vault properties.
  EncryptionProperties({
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

