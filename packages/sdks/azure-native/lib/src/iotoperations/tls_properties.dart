// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tls properties
class TlsProperties {
  /// Mode for TLS.
  final pulumi.Input<String>? mode;
  /// Trusted CA certificate config map.
  final pulumi.Input<String>? trustedCaCertificateConfigMapRef;

  /// Creates a new [TlsProperties].
  /// [mode] Mode for TLS.
  /// [trustedCaCertificateConfigMapRef] Trusted CA certificate config map.
  const TlsProperties({
    this.mode,
    this.trustedCaCertificateConfigMapRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'trustedCaCertificateConfigMapRef': ?trustedCaCertificateConfigMapRef,
    };
  }

  factory TlsProperties.fromMap(Map<String, dynamic> map) {
    return TlsProperties(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedCaCertificateConfigMapRef: (() { final guardedValue = map['trustedCaCertificateConfigMapRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

