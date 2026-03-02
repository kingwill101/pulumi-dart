// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_properties.dart';

/// UsernamePassword for BrokerAuthentication
class BrokerAuthenticatorMethodUsernamePassword {
  /// Keyvault username password secret properties.
  final pulumi.Input<KeyVaultSecretProperties>? keyVault;
  /// Secret where username and password are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [BrokerAuthenticatorMethodUsernamePassword].
  /// [keyVault] Keyvault username password secret properties.
  /// [secretName] Secret where username and password are stored.
  BrokerAuthenticatorMethodUsernamePassword({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodUsernamePassword.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodUsernamePassword(
      keyVault: map['keyVault'] == null ? null : (KeyVaultSecretProperties.fromMap((map['keyVault']! as Map).cast<String, dynamic>())).input(),
      secretName: map['secretName'] == null ? null : (map['secretName']! as String).input(),
    );
  }
}

