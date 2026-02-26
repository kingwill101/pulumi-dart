// ignore_for_file: unused_element, unnecessary_cast

/// MySQL SSL configuration information.
class MysqlSslConfigResponse2 {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final String caCertificate;

  /// Indicates whether the ca_certificate field is set.
  final bool caCertificateSet;

  /// Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  final String clientCertificate;

  /// Indicates whether the client_certificate field is set.
  final bool clientCertificateSet;

  /// Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  final String clientKey;

  /// Indicates whether the client_key field is set.
  final bool clientKeySet;

  MysqlSslConfigResponse2({
    required this.caCertificate,
    required this.caCertificateSet,
    required this.clientCertificate,
    required this.clientCertificateSet,
    required this.clientKey,
    required this.clientKeySet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['caCertificateSet'] = caCertificateSet;
    map['clientCertificate'] = clientCertificate;
    map['clientCertificateSet'] = clientCertificateSet;
    map['clientKey'] = clientKey;
    map['clientKeySet'] = clientKeySet;
    return map;
  }

  factory MysqlSslConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlSslConfigResponse2(
      caCertificate: map['caCertificate'] as String,
      caCertificateSet: map['caCertificateSet'] as bool,
      clientCertificate: map['clientCertificate'] as String,
      clientCertificateSet: map['clientCertificateSet'] as bool,
      clientKey: map['clientKey'] as String,
      clientKeySet: map['clientKeySet'] as bool,
    );
  }
}
