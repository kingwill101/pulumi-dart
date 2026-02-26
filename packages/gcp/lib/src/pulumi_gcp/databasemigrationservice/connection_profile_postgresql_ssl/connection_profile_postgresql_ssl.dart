// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfilePostgresqlSsl {
  /// Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// The replica will use this certificate to verify it's connecting to the right host.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? caCertificate;

  /// Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
  /// If this field is used then the 'clientKey' field is mandatory
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientCertificate;

  /// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// If this field is used then the 'clientCertificate' field is mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientKey;

  /// (Output)
  /// The current connection profile state.
  final String? type;

  ConnectionProfilePostgresqlSsl({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.type,
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ConnectionProfilePostgresqlSsl.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlSsl(
      caCertificate:
          map['caCertificate'] == null ? null : map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
