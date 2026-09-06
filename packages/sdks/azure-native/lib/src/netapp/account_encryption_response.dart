// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity_response.dart';
import 'key_vault_properties_response.dart';

/// Encryption settings
class AccountEncryptionResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<EncryptionIdentityResponse?>? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  final pulumi.Input<String?>? keySource;
  /// Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<KeyVaultPropertiesResponse?>? keyVaultProperties;

  /// Creates a new [AccountEncryptionResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  AccountEncryptionResponse({
    this.identity,
    pulumi.Input<String?>? keySource,
    this.keyVaultProperties,
  }) : keySource = keySource ?? pulumi.Input.fromValue('Microsoft.NetApp');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory AccountEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return AccountEncryptionResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
