// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigResponse2 {
  /// Issue a client certificate.
  final bool issueClientCertificate;

  ClientCertificateConfigResponse2({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueClientCertificate'] = issueClientCertificate;
    return map;
  }

  factory ClientCertificateConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigResponse2(
      issueClientCertificate: map['issueClientCertificate'] as bool,
    );
  }
}
