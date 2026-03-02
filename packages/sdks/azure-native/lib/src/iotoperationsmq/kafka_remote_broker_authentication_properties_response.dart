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
  KafkaRemoteBrokerAuthenticationPropertiesResponse({
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
      authType: map['authType'] == null ? null : (KafkaRemoteBrokerAuthenticationTypesResponse.fromMap((map['authType'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

