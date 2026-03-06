// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MqttBridge RemoteBrokerConnection TLS details
class MqttBridgeRemoteBrokerConnectionTls {
  /// Tls Enabled on Remote Broker Connection.
  final pulumi.Input<bool> tlsEnabled;
  /// Trusted CA certificate name for Remote Broker.
  final pulumi.Input<String>? trustedCaCertificateConfigMap;

  /// Creates a new [MqttBridgeRemoteBrokerConnectionTls].
  /// [tlsEnabled] Tls Enabled on Remote Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate name for Remote Broker.
  const MqttBridgeRemoteBrokerConnectionTls({
    required this.tlsEnabled,
    this.trustedCaCertificateConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsEnabled': tlsEnabled,
      'trustedCaCertificateConfigMap': ?trustedCaCertificateConfigMap,
    };
  }

  factory MqttBridgeRemoteBrokerConnectionTls.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerConnectionTls(
      tlsEnabled: pulumi.Input.fromValue(map['tlsEnabled'] as bool),
      trustedCaCertificateConfigMap: (() { final guardedValue = map['trustedCaCertificateConfigMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

