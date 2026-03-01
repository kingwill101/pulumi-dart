// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration information.
class SslConfigResponse {
  /// Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate. The replica will use this certificate to verify it's connecting to the right host.
  final String caCertificate;

  /// Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.If this field is used then the 'client_key' field is mandatory.
  final String clientCertificate;

  /// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' field is mandatory.
  final String clientKey;

  /// The ssl config type according to 'client_key', 'client_certificate' and 'ca_certificate'.
  final String type;

  /// Creates a new [SslConfigResponse].
  /// [caCertificate] Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate. The replica will use this certificate to verify it's connecting to the right host.
  /// [clientCertificate] Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.If this field is used then the 'client_key' field is mandatory.
  /// [clientKey] Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' field is mandatory.
  /// [type] The ssl config type according to 'client_key', 'client_certificate' and 'ca_certificate'.
  SslConfigResponse({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'type': type,
    };
  }

  factory SslConfigResponse.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      type: map['type'] as String,
    );
  }
}
