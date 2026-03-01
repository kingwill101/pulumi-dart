// ignore_for_file: unused_element, unnecessary_cast


class GetCustomDomainsDomainCertConfig {
  /// The name of the certificate.
  final String certName;
  /// Certificate data of the HTTPS certificates, follow the 'pem'.
  final String certificate;

  /// Creates a new [GetCustomDomainsDomainCertConfig].
  /// [certName] The name of the certificate.
  /// [certificate] Certificate data of the HTTPS certificates, follow the 'pem'.
  GetCustomDomainsDomainCertConfig({
    required this.certName,
    required this.certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': certName,
      'certificate': certificate,
    };
  }

  factory GetCustomDomainsDomainCertConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsDomainCertConfig(
      certName: map['certName'] as String,
      certificate: map['certificate'] as String,
    );
  }
}

