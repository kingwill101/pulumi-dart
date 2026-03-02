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
  SaslRemoteBrokerBasicAuthenticationToken({
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
      keyVault: map['keyVault'] == null ? null : (KafkaTokenKeyVaultProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>())).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
    );
  }
}

