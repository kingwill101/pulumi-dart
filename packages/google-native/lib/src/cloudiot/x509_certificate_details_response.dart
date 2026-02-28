// ignore_for_file: unused_element, unnecessary_cast

/// Details of an X.509 certificate. For informational purposes only.
class X509CertificateDetailsResponse {
  /// The time the certificate becomes invalid.
  final String expiryTime;

  /// The entity that signed the certificate.
  final String issuer;

  /// The type of public key in the certificate.
  final String publicKeyType;

  /// The algorithm used to sign the certificate.
  final String signatureAlgorithm;

  /// The time the certificate becomes valid.
  final String startTime;

  /// The entity the certificate and public key belong to.
  final String subject;

  /// Creates a new [X509CertificateDetailsResponse].
  /// [expiryTime] The time the certificate becomes invalid.
  /// [issuer] The entity that signed the certificate.
  /// [publicKeyType] The type of public key in the certificate.
  /// [signatureAlgorithm] The algorithm used to sign the certificate.
  /// [startTime] The time the certificate becomes valid.
  /// [subject] The entity the certificate and public key belong to.
  X509CertificateDetailsResponse({
    required this.expiryTime,
    required this.issuer,
    required this.publicKeyType,
    required this.signatureAlgorithm,
    required this.startTime,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expiryTime'] = expiryTime;
    map['issuer'] = issuer;
    map['publicKeyType'] = publicKeyType;
    map['signatureAlgorithm'] = signatureAlgorithm;
    map['startTime'] = startTime;
    map['subject'] = subject;
    return map;
  }

  factory X509CertificateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return X509CertificateDetailsResponse(
      expiryTime: map['expiryTime'] as String,
      issuer: map['issuer'] as String,
      publicKeyType: map['publicKeyType'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] as String,
      startTime: map['startTime'] as String,
      subject: map['subject'] as String,
    );
  }
}
