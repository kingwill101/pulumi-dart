// ignore_for_file: unused_element, unnecessary_cast


/// The description of an X509 CA Certificate.
class CertificateProperties {
  /// base-64 representation of X509 certificate .cer file or just .pem file content.
  final String? certificate;
  /// Determines whether certificate has been verified.
  final bool? isVerified;

  /// Creates a new [CertificateProperties].
  /// [certificate] base-64 representation of X509 certificate .cer file or just .pem file content.
  /// [isVerified] Determines whether certificate has been verified.
  CertificateProperties({
    this.certificate,
    this.isVerified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'isVerified': ?isVerified,
    };
  }

  factory CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertificateProperties(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      isVerified: map['isVerified'] == null ? null : map['isVerified'] as bool,
    );
  }
}

