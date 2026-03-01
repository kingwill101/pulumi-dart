// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_certificate_properties_response.dart';

/// Kafka RemoteBrokerConnection X509 Authentication properties.
class KafkaX509AuthenticationResponse {
  /// Keyvault X509 secret properties.
  final KeyVaultCertificatePropertiesResponse? keyVault;
  /// Secret where cert details are stored.
  final String? secretName;

  /// Creates a new [KafkaX509AuthenticationResponse].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  KafkaX509AuthenticationResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory KafkaX509AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return KafkaX509AuthenticationResponse(
      keyVault: map['keyVault'] == null ? null : KeyVaultCertificatePropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

