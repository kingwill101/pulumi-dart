// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration information.
class SslConfigResponse6 {
  /// Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate. The replica will use this certificate to verify it's connecting to the right host.
  final String caCertificate;

  /// Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.If this field is used then the 'client_key' field is mandatory.
  final String clientCertificate;

  /// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' field is mandatory.
  final String clientKey;

  /// The ssl config type according to 'client_key', 'client_certificate' and 'ca_certificate'.
  final String type;

  SslConfigResponse6({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['clientCertificate'] = clientCertificate;
    map['clientKey'] = clientKey;
    map['type'] = type;
    return map;
  }

  factory SslConfigResponse6.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse6(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      type: map['type'] as String,
    );
  }
}
