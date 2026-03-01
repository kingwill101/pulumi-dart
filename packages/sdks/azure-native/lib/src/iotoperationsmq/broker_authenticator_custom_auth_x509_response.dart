// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_certificate_properties_response.dart';

/// X509 Custom Authentication properties. NOTE - Enum only authenticator type supported at a time.
class BrokerAuthenticatorCustomAuthX509Response {
  /// Keyvault X509 secret properties.
  final KeyVaultCertificatePropertiesResponse? keyVault;
  /// Secret where cert details are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorCustomAuthX509Response].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  BrokerAuthenticatorCustomAuthX509Response({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorCustomAuthX509Response.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuthX509Response(
      keyVault: map['keyVault'] == null ? null : KeyVaultCertificatePropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

