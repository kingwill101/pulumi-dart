// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigResponse {
  /// Issue a client certificate.
  final bool issueClientCertificate;

  /// Creates a new [ClientCertificateConfigResponse].
  /// [issueClientCertificate] Issue a client certificate.
  ClientCertificateConfigResponse({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueClientCertificate'] = issueClientCertificate;
    return map;
  }

  factory ClientCertificateConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigResponse(
      issueClientCertificate: map['issueClientCertificate'] as bool,
    );
  }
}
