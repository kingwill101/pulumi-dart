// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_properties_response.dart';

/// UsernamePassword for BrokerAuthentication
class BrokerAuthenticatorMethodUsernamePasswordResponse {
  /// Keyvault username password secret properties.
  final pulumi.Input<KeyVaultSecretPropertiesResponse>? keyVault;
  /// Secret where username and password are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [BrokerAuthenticatorMethodUsernamePasswordResponse].
  /// [keyVault] Keyvault username password secret properties.
  /// [secretName] Secret where username and password are stored.
  BrokerAuthenticatorMethodUsernamePasswordResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretPropertiesResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodUsernamePasswordResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodUsernamePasswordResponse(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultSecretPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

