// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub MpnsCredential.
class MpnsCredential {
  /// Gets or sets the certificate key for this credential.
  final String certificateKey;
  /// Gets or sets the MPNS certificate.
  final String mpnsCertificate;
  /// Gets or sets the MPNS certificate Thumbprint
  final String thumbprint;

  /// Creates a new [MpnsCredential].
  /// [certificateKey] Gets or sets the certificate key for this credential.
  /// [mpnsCertificate] Gets or sets the MPNS certificate.
  /// [thumbprint] Gets or sets the MPNS certificate Thumbprint
  MpnsCredential({
    required this.certificateKey,
    required this.mpnsCertificate,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKey': certificateKey,
      'mpnsCertificate': mpnsCertificate,
      'thumbprint': thumbprint,
    };
  }

  factory MpnsCredential.fromMap(Map<String, dynamic> map) {
    return MpnsCredential(
      certificateKey: map['certificateKey'] as String,
      mpnsCertificate: map['mpnsCertificate'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

