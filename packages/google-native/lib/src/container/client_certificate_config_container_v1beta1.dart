// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for client certificates on the cluster.
class ClientCertificateConfigContainerV1beta1 {
  /// Issue a client certificate.
  final bool? issueClientCertificate;

  /// Creates a new [ClientCertificateConfigContainerV1beta1].
  /// [issueClientCertificate] Issue a client certificate.
  ClientCertificateConfigContainerV1beta1({
    this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': ?issueClientCertificate,
    };
  }

  factory ClientCertificateConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigContainerV1beta1(
      issueClientCertificate: map['issueClientCertificate'] == null ? null : map['issueClientCertificate'] as bool,
    );
  }
}

