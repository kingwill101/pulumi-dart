// ignore_for_file: unused_element, unnecessary_cast

/// MySQL SSL configuration information.
class MysqlSslConfigDatastreamV1alpha1 {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final String? caCertificate;

  /// Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  final String? clientCertificate;

  /// Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  final String? clientKey;

  /// Creates a new [MysqlSslConfigDatastreamV1alpha1].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [clientCertificate] Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  /// [clientKey] Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  MysqlSslConfigDatastreamV1alpha1({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
    };
  }

  factory MysqlSslConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlSslConfigDatastreamV1alpha1(
      caCertificate: map['caCertificate'] == null
          ? null
          : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
    );
  }
}
