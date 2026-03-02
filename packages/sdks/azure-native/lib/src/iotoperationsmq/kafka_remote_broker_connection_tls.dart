// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka RemoteBrokerConnection TLS details
class KafkaRemoteBrokerConnectionTls {
  /// Tls Enabled on Remote Broker Connection.
  final pulumi.Input<bool> tlsEnabled;
  /// Trusted CA certificate name for Remote Broker.
  final pulumi.Input<String>? trustedCaCertificateConfigMap;

  /// Creates a new [KafkaRemoteBrokerConnectionTls].
  /// [tlsEnabled] Tls Enabled on Remote Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate name for Remote Broker.
  KafkaRemoteBrokerConnectionTls({
    required this.tlsEnabled,
    this.trustedCaCertificateConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsEnabled': tlsEnabled,
      'trustedCaCertificateConfigMap': ?trustedCaCertificateConfigMap,
    };
  }

  factory KafkaRemoteBrokerConnectionTls.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerConnectionTls(
      tlsEnabled: (map['tlsEnabled'] as bool).input(),
      trustedCaCertificateConfigMap: map['trustedCaCertificateConfigMap'] == null ? null : (map['trustedCaCertificateConfigMap']! as String).input(),
    );
  }
}

