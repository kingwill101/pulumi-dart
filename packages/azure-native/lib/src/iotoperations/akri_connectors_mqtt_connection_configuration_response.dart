// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_service_account_authentication_response.dart';
import 'tls_properties_response.dart';

/// AkriConnectorsMqttConnectionConfiguration properties.
class AkriConnectorsMqttConnectionConfigurationResponse {
  /// Authentication properties.
  final AkriConnectorsServiceAccountAuthenticationResponse? authentication;
  /// Host of the Broker in the form of <hostname>:<port>.
  final String? host;
  /// KeepAlive for connection in seconds.
  final int? keepAliveSeconds;
  /// The max number of messages to keep in flight. For subscribe, this is the receive maximum. For publish, this is the maximum number of messages to send before waiting for an ack.
  final int? maxInflightMessages;
  /// The protocol to use for the connection. Currently only `mqtt` is supported.
  final String? protocol;
  /// Session expiry in seconds.
  final int? sessionExpirySeconds;
  /// TLS configuration.
  final TlsPropertiesResponse? tls;

  /// Creates a new [AkriConnectorsMqttConnectionConfigurationResponse].
  /// [authentication] Authentication properties.
  /// [host] Host of the Broker in the form of <hostname>:<port>.
  /// [keepAliveSeconds] KeepAlive for connection in seconds.
  /// [maxInflightMessages] The max number of messages to keep in flight. For subscribe, this is the receive maximum. For publish, this is the maximum number of messages to send before waiting for an ack.
  /// [protocol] The protocol to use for the connection. Currently only `mqtt` is supported.
  /// [sessionExpirySeconds] Session expiry in seconds.
  /// [tls] TLS configuration.
  AkriConnectorsMqttConnectionConfigurationResponse({
    this.authentication,
    this.host,
    this.keepAliveSeconds,
    this.maxInflightMessages,
    this.protocol,
    this.sessionExpirySeconds,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'host': ?host,
      'keepAliveSeconds': ?keepAliveSeconds,
      'maxInflightMessages': ?maxInflightMessages,
      'protocol': ?protocol,
      'sessionExpirySeconds': ?sessionExpirySeconds,
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory AkriConnectorsMqttConnectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsMqttConnectionConfigurationResponse(
      authentication: map['authentication'] == null ? null : AkriConnectorsServiceAccountAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      host: map['host'] == null ? null : map['host'] as String,
      keepAliveSeconds: map['keepAliveSeconds'] == null ? null : map['keepAliveSeconds'] as int,
      maxInflightMessages: map['maxInflightMessages'] == null ? null : map['maxInflightMessages'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sessionExpirySeconds: map['sessionExpirySeconds'] == null ? null : map['sessionExpirySeconds'] as int,
      tls: map['tls'] == null ? null : TlsPropertiesResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

