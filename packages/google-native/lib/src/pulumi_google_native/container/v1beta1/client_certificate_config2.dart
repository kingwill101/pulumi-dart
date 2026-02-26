// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig2 {
  /// Issue a client certificate.
  final bool? issueClientCertificate;

  ClientCertificateConfig2({
    this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issueClientCertificateValue = issueClientCertificate;
    if (issueClientCertificateValue != null) {
      map['issueClientCertificate'] = issueClientCertificateValue;
    }
    return map;
  }

  factory ClientCertificateConfig2.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfig2(
      issueClientCertificate: map['issueClientCertificate'] == null
          ? null
          : map['issueClientCertificate'] as bool,
    );
  }
}
