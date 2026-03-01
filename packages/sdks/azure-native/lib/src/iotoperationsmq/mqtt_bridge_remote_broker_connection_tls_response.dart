// ignore_for_file: unused_element, unnecessary_cast


/// MqttBridge RemoteBrokerConnection TLS details
class MqttBridgeRemoteBrokerConnectionTlsResponse {
  /// Tls Enabled on Remote Broker Connection.
  final bool tlsEnabled;
  /// Trusted CA certificate name for Remote Broker.
  final String? trustedCaCertificateConfigMap;

  /// Creates a new [MqttBridgeRemoteBrokerConnectionTlsResponse].
  /// [tlsEnabled] Tls Enabled on Remote Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate name for Remote Broker.
  MqttBridgeRemoteBrokerConnectionTlsResponse({
    required this.tlsEnabled,
    this.trustedCaCertificateConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsEnabled': tlsEnabled,
      'trustedCaCertificateConfigMap': ?trustedCaCertificateConfigMap,
    };
  }

  factory MqttBridgeRemoteBrokerConnectionTlsResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerConnectionTlsResponse(
      tlsEnabled: map['tlsEnabled'] as bool,
      trustedCaCertificateConfigMap: map['trustedCaCertificateConfigMap'] == null ? null : map['trustedCaCertificateConfigMap'] as String,
    );
  }
}

