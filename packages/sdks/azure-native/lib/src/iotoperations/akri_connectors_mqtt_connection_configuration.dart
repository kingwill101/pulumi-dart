// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_service_account_authentication.dart';
import 'tls_properties.dart';

/// AkriConnectorsMqttConnectionConfiguration properties.
class AkriConnectorsMqttConnectionConfiguration {
  /// Authentication properties.
  final pulumi.Input<AkriConnectorsServiceAccountAuthentication>? authentication;
  /// Host of the Broker in the form of <hostname>:<port>.
  final pulumi.Input<String>? host;
  /// KeepAlive for connection in seconds.
  final pulumi.Input<int>? keepAliveSeconds;
  /// The max number of messages to keep in flight. For subscribe, this is the receive maximum. For publish, this is the maximum number of messages to send before waiting for an ack.
  final pulumi.Input<int>? maxInflightMessages;
  /// The protocol to use for the connection. Currently only `mqtt` is supported.
  final pulumi.Input<String>? protocol;
  /// Session expiry in seconds.
  final pulumi.Input<int>? sessionExpirySeconds;
  /// TLS configuration.
  final pulumi.Input<TlsProperties>? tls;

  /// Creates a new [AkriConnectorsMqttConnectionConfiguration].
  /// [authentication] Authentication properties.
  /// [host] Host of the Broker in the form of <hostname>:<port>.
  /// [keepAliveSeconds] KeepAlive for connection in seconds.
  /// [maxInflightMessages] The max number of messages to keep in flight. For subscribe, this is the receive maximum. For publish, this is the maximum number of messages to send before waiting for an ack.
  /// [protocol] The protocol to use for the connection. Currently only `mqtt` is supported.
  /// [sessionExpirySeconds] Session expiry in seconds.
  /// [tls] TLS configuration.
  AkriConnectorsMqttConnectionConfiguration({
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
      'authentication': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsServiceAccountAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'host': ?host,
      'keepAliveSeconds': ?keepAliveSeconds,
      'maxInflightMessages': ?maxInflightMessages,
      'protocol': ?protocol,
      'sessionExpirySeconds': ?sessionExpirySeconds,
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsProperties, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory AkriConnectorsMqttConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsMqttConnectionConfiguration(
      authentication: map['authentication'] == null ? null : (AkriConnectorsServiceAccountAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      keepAliveSeconds: map['keepAliveSeconds'] == null ? null : (map['keepAliveSeconds'] as int).input(),
      maxInflightMessages: map['maxInflightMessages'] == null ? null : (map['maxInflightMessages'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      sessionExpirySeconds: map['sessionExpirySeconds'] == null ? null : (map['sessionExpirySeconds'] as int).input(),
      tls: map['tls'] == null ? null : (TlsProperties.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

