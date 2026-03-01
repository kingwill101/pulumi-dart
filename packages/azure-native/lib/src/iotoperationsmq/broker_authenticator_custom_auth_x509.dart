// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_certificate_properties.dart';

/// X509 Custom Authentication properties. NOTE - Enum only authenticator type supported at a time.
class BrokerAuthenticatorCustomAuthX509 {
  /// Keyvault X509 secret properties.
  final KeyVaultCertificateProperties? keyVault;
  /// Secret where cert details are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorCustomAuthX509].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  BrokerAuthenticatorCustomAuthX509({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorCustomAuthX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuthX509(
      keyVault: map['keyVault'] == null ? null : KeyVaultCertificateProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

