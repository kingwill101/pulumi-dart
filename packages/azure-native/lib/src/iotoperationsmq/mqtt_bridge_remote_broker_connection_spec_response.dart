// ignore_for_file: unused_element, unnecessary_cast

import 'mqtt_bridge_remote_broker_authentication_methods_response.dart';
import 'mqtt_bridge_remote_broker_connection_tls_response.dart';

/// MqttBridge RemoteBrokerConnectionSpec details
class MqttBridgeRemoteBrokerConnectionSpecResponse {
  /// The remote broker authentication methods. NOTE - Enum only one method is allowed to be passed.
  final MqttBridgeRemoteBrokerAuthenticationMethodsResponse authentication;
  /// The endpoint of remote broker to connect to.
  final String endpoint;
  /// Protocol for remote connection.
  final String? protocol;
  /// TLS details for Remote broker Connection.
  final MqttBridgeRemoteBrokerConnectionTlsResponse tls;

  /// Creates a new [MqttBridgeRemoteBrokerConnectionSpecResponse].
  /// [authentication] The remote broker authentication methods. NOTE - Enum only one method is allowed to be passed.
  /// [endpoint] The endpoint of remote broker to connect to.
  /// [protocol] Protocol for remote connection.
  /// [tls] TLS details for Remote broker Connection.
  MqttBridgeRemoteBrokerConnectionSpecResponse({
    required this.authentication,
    required this.endpoint,
    this.protocol,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'endpoint': endpoint,
      'protocol': ?protocol,
      'tls': tls.toMap(),
    };
  }

  factory MqttBridgeRemoteBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerConnectionSpecResponse(
      authentication: MqttBridgeRemoteBrokerAuthenticationMethodsResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      tls: MqttBridgeRemoteBrokerConnectionTlsResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

