// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// Properties to configure Encryption
class Encryption {
  /// Enumerates the possible value of keySource for Encryption
  final String? keySource;
  /// Properties of KeyVault
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [Encryption].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  Encryption({
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

