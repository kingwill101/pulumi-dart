// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig {
  /// Issue a client certificate.
  final bool? issueClientCertificate;

  /// Creates a new [ClientCertificateConfig].
  /// [issueClientCertificate] Issue a client certificate.
  ClientCertificateConfig({
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

  factory ClientCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfig(
      issueClientCertificate: map['issueClientCertificate'] == null
          ? null
          : map['issueClientCertificate'] as bool,
    );
  }
}
