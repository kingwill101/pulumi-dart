// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification {
  /// PEM-encoded server root CA certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String caCertificate;

  /// PEM-encoded certificate used by the source database to authenticate the
  /// client identity (i.e., the Datastream's identity). This certificate is
  /// signed by either a root certificate trusted by the server or one or more
  /// intermediate certificates (which is stored with the leaf certificate) to
  /// link to this certificate to the trusted root certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String clientCertificate;

  /// PEM-encoded private key associated with the client certificate.
  /// This value will be used during the SSL/TLS handshake, allowing
  /// the PostgreSQL server to authenticate the client's identity,
  /// i.e. identity of the stream.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String clientKey;

  ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    map['clientCertificate'] = clientCertificate;
    map['clientKey'] = clientKey;
    return map;
  }

  factory ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification(
      caCertificate: map['caCertificate'] as String,
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
    );
  }
}
