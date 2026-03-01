// ignore_for_file: unused_element, unnecessary_cast


class ClusterMasterAuthClientCertificateConfig {
  /// Whether client certificate authorization is enabled for this cluster.
  final bool issueClientCertificate;

  /// Creates a new [ClusterMasterAuthClientCertificateConfig].
  /// [issueClientCertificate] Whether client certificate authorization is enabled for this cluster.
  ClusterMasterAuthClientCertificateConfig({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': issueClientCertificate,
    };
  }

  factory ClusterMasterAuthClientCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMasterAuthClientCertificateConfig(
      issueClientCertificate: map['issueClientCertificate'] as bool,
    );
  }
}

