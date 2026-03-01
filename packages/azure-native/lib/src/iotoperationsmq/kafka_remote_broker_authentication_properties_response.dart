// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_remote_broker_authentication_types_response.dart';

/// Kafka RemoteBrokerConnection Authentication methods
class KafkaRemoteBrokerAuthenticationPropertiesResponse {
  /// The type of authentication to use for Kafka remote broker.
  final KafkaRemoteBrokerAuthenticationTypesResponse? authType;
  /// If authentication is enabled for Kafka remote broker.
  final bool enabled;

  /// Creates a new [KafkaRemoteBrokerAuthenticationPropertiesResponse].
  /// [authType] The type of authentication to use for Kafka remote broker.
  /// [enabled] If authentication is enabled for Kafka remote broker.
  KafkaRemoteBrokerAuthenticationPropertiesResponse({
    this.authType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType == null ? null : authType!.toMap(),
      'enabled': enabled,
    };
  }

  factory KafkaRemoteBrokerAuthenticationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationPropertiesResponse(
      authType: map['authType'] == null ? null : KafkaRemoteBrokerAuthenticationTypesResponse.fromMap((map['authType'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
    );
  }
}

