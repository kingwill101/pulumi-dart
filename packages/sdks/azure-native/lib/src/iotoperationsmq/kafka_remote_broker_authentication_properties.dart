// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_remote_broker_authentication_types.dart';

/// Kafka RemoteBrokerConnection Authentication methods
class KafkaRemoteBrokerAuthenticationProperties {
  /// The type of authentication to use for Kafka remote broker.
  final pulumi.Input<KafkaRemoteBrokerAuthenticationTypes>? authType;
  /// If authentication is enabled for Kafka remote broker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KafkaRemoteBrokerAuthenticationProperties].
  /// [authType] The type of authentication to use for Kafka remote broker.
  /// [enabled] If authentication is enabled for Kafka remote broker.
  KafkaRemoteBrokerAuthenticationProperties({
    this.authType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?pulumi.Input.mapOptionalInputValue<KafkaRemoteBrokerAuthenticationTypes, Map<String, dynamic>>(authType, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory KafkaRemoteBrokerAuthenticationProperties.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationProperties(
      authType: map['authType'] == null ? null : (KafkaRemoteBrokerAuthenticationTypes.fromMap((map['authType'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

