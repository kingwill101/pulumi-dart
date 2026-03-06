// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_properties.dart';

/// BrokerAuthenticatorMethodX509Attributes properties. NOTE - Enum only type supported at a time.
class BrokerAuthenticatorMethodX509Attributes {
  /// Keyvault x509 attributes secret properties.
  final pulumi.Input<KeyVaultSecretProperties>? keyVault;
  /// Secret where x509 attributes are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [BrokerAuthenticatorMethodX509Attributes].
  /// [keyVault] Keyvault x509 attributes secret properties.
  /// [secretName] Secret where x509 attributes are stored.
  const BrokerAuthenticatorMethodX509Attributes({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodX509Attributes.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509Attributes(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultSecretProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

