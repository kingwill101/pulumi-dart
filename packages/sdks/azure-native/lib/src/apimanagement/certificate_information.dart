// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL certificate information.
class CertificateInformation {
  /// Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final pulumi.Input<String> expiry;
  /// Subject of the certificate.
  final pulumi.Input<String> subject;
  /// Thumbprint of the certificate.
  final pulumi.Input<String> thumbprint;

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
      expiry: (map['expiry'] as String).input(),
      subject: (map['subject'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
    );
  }
}

