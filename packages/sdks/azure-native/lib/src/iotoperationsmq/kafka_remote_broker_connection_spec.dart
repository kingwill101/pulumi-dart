// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_remote_broker_authentication_properties.dart';
import 'kafka_remote_broker_connection_tls.dart';

/// Kafka RemoteBrokerConnectionSpec details
class KafkaRemoteBrokerConnectionSpec {
  /// The remote broker authentication methods.
  final KafkaRemoteBrokerAuthenticationProperties authentication;
  /// The endpoint of remote broker to connect to.
  final String endpoint;
  /// TLS details for Remote broker Connection.
  final KafkaRemoteBrokerConnectionTls tls;

  /// Creates a new [KafkaRemoteBrokerConnectionSpec].
  /// [authentication] The remote broker authentication methods.
  /// [endpoint] The endpoint of remote broker to connect to.
  /// [tls] TLS details for Remote broker Connection.
  KafkaRemoteBrokerConnectionSpec({
    required this.authentication,
    required this.endpoint,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'endpoint': endpoint,
      'tls': tls.toMap(),
    };
  }

  factory KafkaRemoteBrokerConnectionSpec.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionSpec(
      authentication: KafkaRemoteBrokerAuthenticationProperties.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      tls: KafkaRemoteBrokerConnectionTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

