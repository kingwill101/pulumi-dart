// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_certificate_properties.dart';

/// X509 Custom Authentication properties. NOTE - Enum only authenticator type supported at a time.
class BrokerAuthenticatorCustomAuthX509 {
  /// Keyvault X509 secret properties.
  final pulumi.Input<KeyVaultCertificateProperties>? keyVault;

  /// Secret where cert details are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [BrokerAuthenticatorCustomAuthX509].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  BrokerAuthenticatorCustomAuthX509({this.keyVault, this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultCertificateProperties,
            Map<String, dynamic>
          >(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorCustomAuthX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuthX509(
      keyVault: (() {
        final guardedValue = map['keyVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultCertificateProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
