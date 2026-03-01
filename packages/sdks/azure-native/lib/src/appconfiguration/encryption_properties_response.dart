// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// The encryption settings for a configuration store.
class EncryptionPropertiesResponse {
  /// Key vault properties.
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [keyVaultProperties] Key vault properties.
  EncryptionPropertiesResponse({
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

