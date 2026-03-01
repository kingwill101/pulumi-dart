// ignore_for_file: unused_element, unnecessary_cast

import 'secret_password_identity_response.dart';
import 'secret_password_key_vault_properties_response.dart';

/// Access password from Azure KeyVault Secrets to connect Active Directory
class SecretPasswordResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final SecretPasswordIdentityResponse? identity;
  /// Properties provided by KeyVault.
  final SecretPasswordKeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [SecretPasswordResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keyVaultProperties] Properties provided by KeyVault.
  SecretPasswordResponse({
    this.identity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory SecretPasswordResponse.fromMap(Map<String, dynamic> map) {
    return SecretPasswordResponse(
      identity: map['identity'] == null ? null : SecretPasswordIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : SecretPasswordKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

