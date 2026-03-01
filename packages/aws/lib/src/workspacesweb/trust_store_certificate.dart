// ignore_for_file: unused_element, unnecessary_cast

class TrustStoreCertificate {
  /// Certificate body in PEM format.
  final String body;

  /// Certificate issuer.
  final String? issuer;

  /// Date and time when the certificate expires in RFC3339 format.
  final String? notValidAfter;

  /// Date and time when the certificate becomes valid in RFC3339 format.
  final String? notValidBefore;

  /// Certificate subject.
  final String? subject;

  /// Certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [TrustStoreCertificate].
  /// [body] Certificate body in PEM format.
  /// [issuer] Certificate issuer.
  /// [notValidAfter] Date and time when the certificate expires in RFC3339 format.
  /// [notValidBefore] Date and time when the certificate becomes valid in RFC3339 format.
  /// [subject] Certificate subject.
  /// [thumbprint] Certificate thumbprint.
  TrustStoreCertificate({
    required this.body,
    this.issuer,
    this.notValidAfter,
    this.notValidBefore,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'issuer': ?issuer,
      'notValidAfter': ?notValidAfter,
      'notValidBefore': ?notValidBefore,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory TrustStoreCertificate.fromMap(Map<String, dynamic> map) {
    return TrustStoreCertificate(
      body: map['body'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      notValidAfter: map['notValidAfter'] == null
          ? null
          : map['notValidAfter'] as String,
      notValidBefore: map['notValidBefore'] == null
          ? null
          : map['notValidBefore'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      thumbprint: map['thumbprint'] == null
          ? null
          : map['thumbprint'] as String,
    );
  }
}
