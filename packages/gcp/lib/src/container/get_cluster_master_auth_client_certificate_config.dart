// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMasterAuthClientCertificateConfig {
  /// Whether client certificate authorization is enabled for this cluster.
  final bool issueClientCertificate;

  /// Creates a new [GetClusterMasterAuthClientCertificateConfig].
  /// [issueClientCertificate] Whether client certificate authorization is enabled for this cluster.
  GetClusterMasterAuthClientCertificateConfig({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueClientCertificate'] = issueClientCertificate;
    return map;
  }

  factory GetClusterMasterAuthClientCertificateConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMasterAuthClientCertificateConfig(
      issueClientCertificate: map['issueClientCertificate'] as bool,
    );
  }
}
