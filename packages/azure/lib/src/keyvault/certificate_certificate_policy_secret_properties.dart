// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificatePolicySecretProperties {
  /// The Content-Type of the Certificate, such as `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  final String contentType;

  /// Creates a new [CertificateCertificatePolicySecretProperties].
  /// [contentType] The Content-Type of the Certificate, such as `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  CertificateCertificatePolicySecretProperties({
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
    };
  }

  factory CertificateCertificatePolicySecretProperties.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicySecretProperties(
      contentType: map['contentType'] as String,
    );
  }
}

