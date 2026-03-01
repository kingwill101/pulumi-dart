// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// Properties to EncryptionScope
class EncryptionScopeProperties {
  /// Enumerates the possible value of keySource for Encryption
  final String? keySource;
  /// Properties of KeyVault
  final KeyVaultProperties? keyVaultProperties;
  /// The encryptionScope state.
  final String? state;

  /// Creates a new [EncryptionScopeProperties].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [state] The encryptionScope state.
  EncryptionScopeProperties({
    this.keySource,
    this.keyVaultProperties,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'state': ?state,
    };
  }

  factory EncryptionScopeProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeProperties(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

