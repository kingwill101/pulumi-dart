// ignore_for_file: unused_element, unnecessary_cast


/// Tls properties
class TlsPropertiesResponse {
  /// Mode for TLS.
  final String? mode;
  /// Trusted CA certificate config map.
  final String? trustedCaCertificateConfigMapRef;

  /// Creates a new [TlsPropertiesResponse].
  /// [mode] Mode for TLS.
  /// [trustedCaCertificateConfigMapRef] Trusted CA certificate config map.
  TlsPropertiesResponse({
    this.mode,
    this.trustedCaCertificateConfigMapRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'trustedCaCertificateConfigMapRef': ?trustedCaCertificateConfigMapRef,
    };
  }

  factory TlsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TlsPropertiesResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      trustedCaCertificateConfigMapRef: map['trustedCaCertificateConfigMapRef'] == null ? null : map['trustedCaCertificateConfigMapRef'] as String,
    );
  }
}

