// ignore_for_file: unused_element, unnecessary_cast


/// The description of an X509 CA Certificate.
class CertificatePropertiesResponse {
  /// base-64 representation of X509 certificate .cer file or just .pem file content.
  final String? certificate;
  /// The certificate's creation date and time.
  final String created;
  /// The certificate's expiration date and time.
  final String expiry;
  /// Determines whether certificate has been verified.
  final bool? isVerified;
  /// The certificate's subject name.
  final String subject;
  /// The certificate's thumbprint.
  final String thumbprint;
  /// The certificate's last update date and time.
  final String updated;

  /// Creates a new [CertificatePropertiesResponse].
  /// [certificate] base-64 representation of X509 certificate .cer file or just .pem file content.
  /// [created] The certificate's creation date and time.
  /// [expiry] The certificate's expiration date and time.
  /// [isVerified] Determines whether certificate has been verified.
  /// [subject] The certificate's subject name.
  /// [thumbprint] The certificate's thumbprint.
  /// [updated] The certificate's last update date and time.
  CertificatePropertiesResponse({
    this.certificate,
    required this.created,
    required this.expiry,
    this.isVerified,
    required this.subject,
    required this.thumbprint,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'created': created,
      'expiry': expiry,
      'isVerified': ?isVerified,
      'subject': subject,
      'thumbprint': thumbprint,
      'updated': updated,
    };
  }

  factory CertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CertificatePropertiesResponse(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      created: map['created'] as String,
      expiry: map['expiry'] as String,
      isVerified: map['isVerified'] == null ? null : map['isVerified'] as bool,
      subject: map['subject'] as String,
      thumbprint: map['thumbprint'] as String,
      updated: map['updated'] as String,
    );
  }
}

