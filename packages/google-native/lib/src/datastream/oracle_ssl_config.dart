// ignore_for_file: unused_element, unnecessary_cast

/// Oracle SSL configuration information.
class OracleSslConfig {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final String? caCertificate;

  /// Creates a new [OracleSslConfig].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  OracleSslConfig({
    this.caCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertificateValue = caCertificate;
    if (caCertificateValue != null) {
      map['caCertificate'] = caCertificateValue;
    }
    return map;
  }

  factory OracleSslConfig.fromMap(Map<String, dynamic> map) {
    return OracleSslConfig(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
    );
  }
}
