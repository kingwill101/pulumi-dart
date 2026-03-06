// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_token_key_vault_properties.dart';

/// Kafka RemoteBrokerConnection Sasl Authentication token properties. NOTE - Enum only one method is allowed to be passed.
class SaslRemoteBrokerBasicAuthenticationToken {
  /// Keyvault token keyvault secret properties.
  final pulumi.Input<KafkaTokenKeyVaultProperties>? keyVault;
  /// Secret where cert details are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [SaslRemoteBrokerBasicAuthenticationToken].
  /// [keyVault] Keyvault token keyvault secret properties.
  /// [secretName] Secret where cert details are stored.
  const SaslRemoteBrokerBasicAuthenticationToken({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KafkaTokenKeyVaultProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory SaslRemoteBrokerBasicAuthenticationToken.fromMap(Map<String, dynamic> map) {
    return SaslRemoteBrokerBasicAuthenticationToken(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaTokenKeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

