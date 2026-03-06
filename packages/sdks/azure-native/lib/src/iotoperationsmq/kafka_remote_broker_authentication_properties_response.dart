// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_remote_broker_authentication_types_response.dart';

/// Kafka RemoteBrokerConnection Authentication methods
class KafkaRemoteBrokerAuthenticationPropertiesResponse {
  /// The type of authentication to use for Kafka remote broker.
  final pulumi.Input<KafkaRemoteBrokerAuthenticationTypesResponse>? authType;
  /// If authentication is enabled for Kafka remote broker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KafkaRemoteBrokerAuthenticationPropertiesResponse].
  /// [authType] The type of authentication to use for Kafka remote broker.
  /// [enabled] If authentication is enabled for Kafka remote broker.
  const KafkaRemoteBrokerAuthenticationPropertiesResponse({
    this.authType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?pulumi.Input.mapOptionalInputValue<KafkaRemoteBrokerAuthenticationTypesResponse, Map<String, dynamic>>(authType, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory KafkaRemoteBrokerAuthenticationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationPropertiesResponse(
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaRemoteBrokerAuthenticationTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

