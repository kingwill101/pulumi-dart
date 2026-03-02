// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mqtt Local Broker Connection TLS details
class LocalBrokerConnectionTls {
  /// Tls Enabled on Local Broker Connection.
  final pulumi.Input<bool>? tlsEnabled;
  /// Trusted CA certificate config map name for Local Broker.
  final pulumi.Input<String>? trustedCaCertificateConfigMap;

  /// Creates a new [LocalBrokerConnectionTls].
  /// [tlsEnabled] Tls Enabled on Local Broker Connection.
  /// [trustedCaCertificateConfigMap] Trusted CA certificate config map name for Local Broker.
  LocalBrokerConnectionTls({
    this.tlsEnabled,
    this.trustedCaCertificateConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsEnabled': ?tlsEnabled,
      'trustedCaCertificateConfigMap': ?trustedCaCertificateConfigMap,
    };
  }

  factory LocalBrokerConnectionTls.fromMap(Map<String, dynamic> map) {
    return LocalBrokerConnectionTls(
      tlsEnabled: map['tlsEnabled'] == null ? null : (map['tlsEnabled'] as bool).input(),
      trustedCaCertificateConfigMap: map['trustedCaCertificateConfigMap'] == null ? null : (map['trustedCaCertificateConfigMap'] as String).input(),
    );
  }
}

