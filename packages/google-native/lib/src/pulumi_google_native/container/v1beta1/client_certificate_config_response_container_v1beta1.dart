// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigResponseContainerV1beta1 {
  /// Issue a client certificate.
  final bool issueClientCertificate;

  ClientCertificateConfigResponseContainerV1beta1({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueClientCertificate'] = issueClientCertificate;
    return map;
  }

  factory ClientCertificateConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ClientCertificateConfigResponseContainerV1beta1(
      issueClientCertificate: map['issueClientCertificate'] as bool,
    );
  }
}
