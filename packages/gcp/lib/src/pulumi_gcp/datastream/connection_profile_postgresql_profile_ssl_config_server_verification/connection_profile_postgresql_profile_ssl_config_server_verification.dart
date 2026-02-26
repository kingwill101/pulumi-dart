// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfilePostgresqlProfileSslConfigServerVerification {
  /// PEM-encoded server root CA certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String caCertificate;

  ConnectionProfilePostgresqlProfileSslConfigServerVerification({
    required this.caCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificate'] = caCertificate;
    return map;
  }

  factory ConnectionProfilePostgresqlProfileSslConfigServerVerification.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfileSslConfigServerVerification(
      caCertificate: map['caCertificate'] as String,
    );
  }
}
