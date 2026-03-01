// ignore_for_file: unused_element, unnecessary_cast


class CustomDomainCertConfig {
  /// The name of the certificate, used to distinguish different certificates.
  final String certName;
  /// Certificate data of the HTTPS certificates, follow the 'pem' format.
  final String certificate;
  /// Private key of the HTTPS certificates, follow the 'pem' format.
  final String privateKey;

  /// Creates a new [CustomDomainCertConfig].
  /// [certName] The name of the certificate, used to distinguish different certificates.
  /// [certificate] Certificate data of the HTTPS certificates, follow the 'pem' format.
  /// [privateKey] Private key of the HTTPS certificates, follow the 'pem' format.
  CustomDomainCertConfig({
    required this.certName,
    required this.certificate,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': certName,
      'certificate': certificate,
      'privateKey': privateKey,
    };
  }

  factory CustomDomainCertConfig.fromMap(Map<String, dynamic> map) {
    return CustomDomainCertConfig(
      certName: map['certName'] as String,
      certificate: map['certificate'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

