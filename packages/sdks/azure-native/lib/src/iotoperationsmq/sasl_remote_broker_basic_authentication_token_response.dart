// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_token_key_vault_properties_response.dart';

/// Kafka RemoteBrokerConnection Sasl Authentication token properties. NOTE - Enum only one method is allowed to be passed.
class SaslRemoteBrokerBasicAuthenticationTokenResponse {
  /// Keyvault token keyvault secret properties.
  final pulumi.Input<KafkaTokenKeyVaultPropertiesResponse>? keyVault;
  /// Secret where cert details are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [SaslRemoteBrokerBasicAuthenticationTokenResponse].
  /// [keyVault] Keyvault token keyvault secret properties.
  /// [secretName] Secret where cert details are stored.
  const SaslRemoteBrokerBasicAuthenticationTokenResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KafkaTokenKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory SaslRemoteBrokerBasicAuthenticationTokenResponse.fromMap(Map<String, dynamic> map) {
    return SaslRemoteBrokerBasicAuthenticationTokenResponse(
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaTokenKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

