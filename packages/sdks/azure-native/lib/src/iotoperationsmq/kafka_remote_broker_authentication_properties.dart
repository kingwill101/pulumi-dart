// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_remote_broker_authentication_types.dart';

/// Kafka RemoteBrokerConnection Authentication methods
class KafkaRemoteBrokerAuthenticationProperties {
  /// The type of authentication to use for Kafka remote broker.
  final KafkaRemoteBrokerAuthenticationTypes? authType;
  /// If authentication is enabled for Kafka remote broker.
  final bool enabled;

  /// Creates a new [KafkaRemoteBrokerAuthenticationProperties].
  /// [authType] The type of authentication to use for Kafka remote broker.
  /// [enabled] If authentication is enabled for Kafka remote broker.
  KafkaRemoteBrokerAuthenticationProperties({
    this.authType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType == null ? null : authType!.toMap(),
      'enabled': enabled,
    };
  }

  factory KafkaRemoteBrokerAuthenticationProperties.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationProperties(
      authType: map['authType'] == null ? null : KafkaRemoteBrokerAuthenticationTypes.fromMap((map['authType'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
    );
  }
}

