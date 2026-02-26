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

  TrustStoreCertificate({
    required this.body,
    this.issuer,
    this.notValidAfter,
    this.notValidBefore,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['body'] = body;
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final notValidAfterValue = notValidAfter;
    if (notValidAfterValue != null) {
      map['notValidAfter'] = notValidAfterValue;
    }
    final notValidBeforeValue = notValidBefore;
    if (notValidBeforeValue != null) {
      map['notValidBefore'] = notValidBeforeValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    final thumbprintValue = thumbprint;
    if (thumbprintValue != null) {
      map['thumbprint'] = thumbprintValue;
    }
    return map;
  }

  factory TrustStoreCertificate.fromMap(Map<String, dynamic> map) {
    return TrustStoreCertificate(
      body: map['body'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      notValidAfter:
          map['notValidAfter'] == null ? null : map['notValidAfter'] as String,
      notValidBefore: map['notValidBefore'] == null
          ? null
          : map['notValidBefore'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      thumbprint:
          map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}
