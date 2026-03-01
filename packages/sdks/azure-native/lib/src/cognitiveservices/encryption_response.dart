// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// Properties to configure Encryption
class EncryptionResponse {
  /// Enumerates the possible value of keySource for Encryption
  final String? keySource;
  /// Properties of KeyVault
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [EncryptionResponse].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  EncryptionResponse({
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

