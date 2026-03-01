// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_certificate_properties.dart';

/// Kafka RemoteBrokerConnection X509 Authentication properties.
class KafkaX509Authentication {
  /// Keyvault X509 secret properties.
  final KeyVaultCertificateProperties? keyVault;
  /// Secret where cert details are stored.
  final String? secretName;

  /// Creates a new [KafkaX509Authentication].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  KafkaX509Authentication({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory KafkaX509Authentication.fromMap(Map<String, dynamic> map) {
    return KafkaX509Authentication(
      keyVault: map['keyVault'] == null ? null : KeyVaultCertificateProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

