// ignore_for_file: unused_element, unnecessary_cast

/// Oracle SSL configuration information.
class OracleSslConfigResponse {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final String caCertificate;

  /// Indicates whether the ca_certificate field has been set for this Connection-Profile.
  final bool caCertificateSet;

  /// Creates a new [OracleSslConfigResponse].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [caCertificateSet] Indicates whether the ca_certificate field has been set for this Connection-Profile.
  OracleSslConfigResponse({
    required this.caCertificate,
    required this.caCertificateSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['caCertificateSet'] = caCertificateSet;
    return map;
  }

  factory OracleSslConfigResponse.fromMap(Map<String, dynamic> map) {
    return OracleSslConfigResponse(
      caCertificate: map['caCertificate'] as String,
      caCertificateSet: map['caCertificateSet'] as bool,
    );
  }
}
