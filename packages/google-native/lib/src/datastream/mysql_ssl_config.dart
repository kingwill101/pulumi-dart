// ignore_for_file: unused_element, unnecessary_cast

/// MySQL SSL configuration information.
class MysqlSslConfig {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final String? caCertificate;

  /// Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  final String? clientCertificate;

  /// Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  final String? clientKey;

  /// Creates a new [MysqlSslConfig].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [clientCertificate] Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  /// [clientKey] Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  MysqlSslConfig({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertificateValue = caCertificate;
    if (caCertificateValue != null) {
      map['caCertificate'] = caCertificateValue;
    }
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue;
    }
    final clientKeyValue = clientKey;
    if (clientKeyValue != null) {
      map['clientKey'] = clientKeyValue;
    }
    return map;
  }

  factory MysqlSslConfig.fromMap(Map<String, dynamic> map) {
    return MysqlSslConfig(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
    );
  }
}
