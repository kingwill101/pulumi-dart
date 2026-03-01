// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_remote_broker_authentication_properties_response.dart';
import 'kafka_remote_broker_connection_tls_response.dart';

/// Kafka RemoteBrokerConnectionSpec details
class KafkaRemoteBrokerConnectionSpecResponse {
  /// The remote broker authentication methods.
  final KafkaRemoteBrokerAuthenticationPropertiesResponse authentication;
  /// The endpoint of remote broker to connect to.
  final String endpoint;
  /// TLS details for Remote broker Connection.
  final KafkaRemoteBrokerConnectionTlsResponse tls;

  /// Creates a new [KafkaRemoteBrokerConnectionSpecResponse].
  /// [authentication] The remote broker authentication methods.
  /// [endpoint] The endpoint of remote broker to connect to.
  /// [tls] TLS details for Remote broker Connection.
  KafkaRemoteBrokerConnectionSpecResponse({
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

  factory KafkaRemoteBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionSpecResponse(
      authentication: KafkaRemoteBrokerAuthenticationPropertiesResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      tls: KafkaRemoteBrokerConnectionTlsResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

