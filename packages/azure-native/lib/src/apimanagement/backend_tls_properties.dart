// ignore_for_file: unused_element, unnecessary_cast


/// Properties controlling TLS Certificate Validation.
class BackendTlsProperties {
  /// Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for this backend host.
  final bool? validateCertificateChain;
  /// Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for this backend host.
  final bool? validateCertificateName;

  /// Creates a new [BackendTlsProperties].
  /// [validateCertificateChain] Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for this backend host.
  /// [validateCertificateName] Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for this backend host.
  BackendTlsProperties({
    this.validateCertificateChain,
    this.validateCertificateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validateCertificateChain': ?validateCertificateChain,
      'validateCertificateName': ?validateCertificateName,
    };
  }

  factory BackendTlsProperties.fromMap(Map<String, dynamic> map) {
    return BackendTlsProperties(
      validateCertificateChain: map['validateCertificateChain'] == null ? null : map['validateCertificateChain'] as bool,
      validateCertificateName: map['validateCertificateName'] == null ? null : map['validateCertificateName'] as bool,
    );
  }
}

