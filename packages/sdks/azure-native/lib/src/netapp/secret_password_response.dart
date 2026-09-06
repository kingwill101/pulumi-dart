// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_password_identity_response.dart';
import 'secret_password_key_vault_properties_response.dart';

/// Access password from Azure KeyVault Secrets to connect Active Directory
class SecretPasswordResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<SecretPasswordIdentityResponse?>? identity;
  /// Properties provided by KeyVault.
  final pulumi.Input<SecretPasswordKeyVaultPropertiesResponse?>? keyVaultProperties;

  /// Creates a new [SecretPasswordResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keyVaultProperties] Properties provided by KeyVault.
  const SecretPasswordResponse({
    this.identity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SecretPasswordIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<SecretPasswordKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory SecretPasswordResponse.fromMap(Map<String, dynamic> map) {
    return SecretPasswordResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretPasswordIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretPasswordKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
