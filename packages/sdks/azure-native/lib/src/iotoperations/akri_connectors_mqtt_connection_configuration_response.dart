// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_service_account_authentication_response.dart';
import 'tls_properties_response.dart';

/// AkriConnectorsMqttConnectionConfiguration properties.
class AkriConnectorsMqttConnectionConfigurationResponse {
  /// Authentication properties.
  final pulumi.Input<AkriConnectorsServiceAccountAuthenticationResponse>? authentication;
  /// Host of the Broker in the form of &lt;hostname&gt;:&lt;port&gt;.
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
  final pulumi.Input<TlsPropertiesResponse>? tls;

  /// Creates a new [AkriConnectorsMqttConnectionConfigurationResponse].
  /// [authentication] Authentication properties.
  /// [host] Host of the Broker in the form of &lt;hostname&gt;:&lt;port&gt;.
  /// [keepAliveSeconds] KeepAlive for connection in seconds.
  /// [maxInflightMessages] The max number of messages to keep in flight. For subscribe, this is the receive maximum. For publish, this is the maximum number of messages to send before waiting for an ack.
  /// [protocol] The protocol to use for the connection. Currently only `mqtt` is supported.
  /// [sessionExpirySeconds] Session expiry in seconds.
  /// [tls] TLS configuration.
  const AkriConnectorsMqttConnectionConfigurationResponse({
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
      'authentication': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsServiceAccountAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'host': ?host,
      'keepAliveSeconds': ?keepAliveSeconds,
      'maxInflightMessages': ?maxInflightMessages,
      'protocol': ?protocol,
      'sessionExpirySeconds': ?sessionExpirySeconds,
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsPropertiesResponse, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory AkriConnectorsMqttConnectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsMqttConnectionConfigurationResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorsServiceAccountAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAliveSeconds: (() { final guardedValue = map['keepAliveSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxInflightMessages: (() { final guardedValue = map['maxInflightMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionExpirySeconds: (() { final guardedValue = map['sessionExpirySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

