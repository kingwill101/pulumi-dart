// ignore_for_file: unused_element, unnecessary_cast


/// SSL certificate information.
class CertificateInformation {
  /// Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String expiry;
  /// Subject of the certificate.
  final String subject;
  /// Thumbprint of the certificate.
  final String thumbprint;

  /// Creates a new [CertificateInformation].
  /// [expiry] Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [subject] Subject of the certificate.
  /// [thumbprint] Thumbprint of the certificate.
  CertificateInformation({
    required this.expiry,
    required this.subject,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'subject': subject,
      'thumbprint': thumbprint,
    };
  }

  factory CertificateInformation.fromMap(Map<String, dynamic> map) {
    return CertificateInformation(
      expiry: map['expiry'] as String,
      subject: map['subject'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

