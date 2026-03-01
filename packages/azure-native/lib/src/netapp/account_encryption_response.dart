// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_identity_response.dart';
import 'key_vault_properties_response.dart';

/// Encryption settings
class AccountEncryptionResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final EncryptionIdentityResponse? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  final String? keySource;
  /// Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [AccountEncryptionResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  AccountEncryptionResponse({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory AccountEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return AccountEncryptionResponse(
      identity: map['identity'] == null ? null : EncryptionIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

