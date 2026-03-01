// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
class EncryptionPropertiesResponse {
  /// Type of the key source.
  final String? keySource;
  /// Additional details when using Microsoft.KeyVault
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [keySource] Type of the key source.
  /// [keyVaultProperties] Additional details when using Microsoft.KeyVault
  EncryptionPropertiesResponse({
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

