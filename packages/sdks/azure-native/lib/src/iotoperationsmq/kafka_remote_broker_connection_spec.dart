// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_remote_broker_authentication_properties.dart';
import 'kafka_remote_broker_connection_tls.dart';

/// Kafka RemoteBrokerConnectionSpec details
class KafkaRemoteBrokerConnectionSpec {
  /// The remote broker authentication methods.
  final pulumi.Input<KafkaRemoteBrokerAuthenticationProperties> authentication;
  /// The endpoint of remote broker to connect to.
  final pulumi.Input<String> endpoint;
  /// TLS details for Remote broker Connection.
  final pulumi.Input<KafkaRemoteBrokerConnectionTls> tls;

  /// Creates a new [KafkaRemoteBrokerConnectionSpec].
  /// [authentication] The remote broker authentication methods.
  /// [endpoint] The endpoint of remote broker to connect to.
  /// [tls] TLS details for Remote broker Connection.
  const KafkaRemoteBrokerConnectionSpec({
    required this.authentication,
    required this.endpoint,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<KafkaRemoteBrokerAuthenticationProperties, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
      'tls': pulumi.Input.mapInputValue<KafkaRemoteBrokerConnectionTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory KafkaRemoteBrokerConnectionSpec.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionSpec(
      authentication: pulumi.Input.fromValue(KafkaRemoteBrokerAuthenticationProperties.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      tls: pulumi.Input.fromValue(KafkaRemoteBrokerConnectionTls.fromMap((map['tls']! as Map).cast<String, dynamic>())),
    );
  }
}
