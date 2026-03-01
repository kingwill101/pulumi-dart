// ignore_for_file: unused_element, unnecessary_cast

import 'key_source.dart';
import 'key_vault_properties.dart';

/// Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
class EncryptionProperties {
  /// Type of the key source.
  final KeySource? keySource;
  /// Additional details when using Microsoft.KeyVault
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionProperties].
  /// [keySource] Type of the key source.
  /// [keyVaultProperties] Additional details when using Microsoft.KeyVault
  EncryptionProperties({
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource == null ? null : keySource!.value,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      keySource: map['keySource'] == null ? null : KeySource.fromValue(map['keySource'] as String),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

