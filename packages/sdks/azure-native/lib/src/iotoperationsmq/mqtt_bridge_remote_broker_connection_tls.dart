// ignore_for_file: unused_element, unnecessary_cast


/// MqttBridge RemoteBrokerConnection TLS details
class MqttBridgeRemoteBrokerConnectionTls {
  /// Tls Enabled on Remote Broker Connection.
  final bool tlsEnabled;
  /// Trusted CA certificate name for Remote Broker.
  final String? trustedCaCertificateConfigMap;

  /// Creates a new [MqttBridgeRemoteBrokerConnectionTls].
  /// [tlsEnabled] Tls Enabled on Remote Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate name for Remote Broker.
  MqttBridgeRemoteBrokerConnectionTls({
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
      tlsEnabled: map['tlsEnabled'] as bool,
      trustedCaCertificateConfigMap: map['trustedCaCertificateConfigMap'] == null ? null : map['trustedCaCertificateConfigMap'] as String,
    );
  }
}

