// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// Properties to EncryptionScope
class EncryptionScopePropertiesResponse {
  /// Enumerates the possible value of keySource for Encryption
  final String? keySource;
  /// Properties of KeyVault
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// Gets the status of the resource at the time the operation was called.
  final String provisioningState;
  /// The encryptionScope state.
  final String? state;

  /// Creates a new [EncryptionScopePropertiesResponse].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [provisioningState] Gets the status of the resource at the time the operation was called.
  /// [state] The encryptionScope state.
  EncryptionScopePropertiesResponse({
    this.keySource,
    this.keyVaultProperties,
    required this.provisioningState,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'provisioningState': provisioningState,
      'state': ?state,
    };
  }

  factory EncryptionScopePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionScopePropertiesResponse(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

