// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfilePostgresqlProfileSslConfigServerVerification {
  /// PEM-encoded server root CA certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String caCertificate;

  /// Creates a new [ConnectionProfilePostgresqlProfileSslConfigServerVerification].
  /// [caCertificate] PEM-encoded server root CA certificate.
  ConnectionProfilePostgresqlProfileSslConfigServerVerification({
    required this.caCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'caCertificate': caCertificate};
  }

  factory ConnectionProfilePostgresqlProfileSslConfigServerVerification.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionProfilePostgresqlProfileSslConfigServerVerification(
      caCertificate: map['caCertificate'] as String,
    );
  }
}
