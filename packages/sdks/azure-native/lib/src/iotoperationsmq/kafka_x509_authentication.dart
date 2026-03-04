// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_certificate_properties.dart';

/// Kafka RemoteBrokerConnection X509 Authentication properties.
class KafkaX509Authentication {
  /// Keyvault X509 secret properties.
  final pulumi.Input<KeyVaultCertificateProperties>? keyVault;

  /// Secret where cert details are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [KafkaX509Authentication].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  KafkaX509Authentication({this.keyVault, this.secretName});

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

  factory KafkaX509Authentication.fromMap(Map<String, dynamic> map) {
    return KafkaX509Authentication(
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
