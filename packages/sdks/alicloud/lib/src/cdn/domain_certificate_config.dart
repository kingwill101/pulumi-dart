// ignore_for_file: unused_element, unnecessary_cast


class DomainCertificateConfig {
  final String? privateKey;
  final String? serverCertificate;
  final String? serverCertificateStatus;

  /// Creates a new [DomainCertificateConfig].
  /// [privateKey] Optional.
  /// [serverCertificate] Optional.
  /// [serverCertificateStatus] Optional.
  DomainCertificateConfig({
    this.privateKey,
    this.serverCertificate,
    this.serverCertificateStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'serverCertificate': ?serverCertificate,
      'serverCertificateStatus': ?serverCertificateStatus,
    };
  }

  factory DomainCertificateConfig.fromMap(Map<String, dynamic> map) {
    return DomainCertificateConfig(
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      serverCertificate: map['serverCertificate'] == null ? null : map['serverCertificate'] as String,
      serverCertificateStatus: map['serverCertificateStatus'] == null ? null : map['serverCertificateStatus'] as String,
    );
  }
}

