// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_remote_broker_authentication_properties_response.dart';
import 'kafka_remote_broker_connection_tls_response.dart';

/// Kafka RemoteBrokerConnectionSpec details
class KafkaRemoteBrokerConnectionSpecResponse {
  /// The remote broker authentication methods.
  final pulumi.Input<KafkaRemoteBrokerAuthenticationPropertiesResponse> authentication;
  /// The endpoint of remote broker to connect to.
  final pulumi.Input<String> endpoint;
  /// TLS details for Remote broker Connection.
  final pulumi.Input<KafkaRemoteBrokerConnectionTlsResponse> tls;

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
      'authentication': pulumi.Input.mapInputValue<KafkaRemoteBrokerAuthenticationPropertiesResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
      'tls': pulumi.Input.mapInputValue<KafkaRemoteBrokerConnectionTlsResponse, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory KafkaRemoteBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionSpecResponse(
      authentication: pulumi.Input.fromValue(KafkaRemoteBrokerAuthenticationPropertiesResponse.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      tls: pulumi.Input.fromValue(KafkaRemoteBrokerConnectionTlsResponse.fromMap((map['tls']! as Map).cast<String, dynamic>())),
    );
  }
}

