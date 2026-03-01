// ignore_for_file: unused_element, unnecessary_cast


/// Kafka RemoteBrokerConnection TLS details
class KafkaRemoteBrokerConnectionTlsResponse {
  /// Tls Enabled on Remote Broker Connection.
  final bool tlsEnabled;
  /// Trusted CA certificate name for Remote Broker.
  final String? trustedCaCertificateConfigMap;

  /// Creates a new [KafkaRemoteBrokerConnectionTlsResponse].
  /// [tlsEnabled] Tls Enabled on Remote Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate name for Remote Broker.
  KafkaRemoteBrokerConnectionTlsResponse({
    required this.tlsEnabled,
    this.trustedCaCertificateConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsEnabled': tlsEnabled,
      'trustedCaCertificateConfigMap': ?trustedCaCertificateConfigMap,
    };
  }

  factory KafkaRemoteBrokerConnectionTlsResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionTlsResponse(
      tlsEnabled: map['tlsEnabled'] as bool,
      trustedCaCertificateConfigMap: map['trustedCaCertificateConfigMap'] == null ? null : map['trustedCaCertificateConfigMap'] as String,
    );
  }
}

