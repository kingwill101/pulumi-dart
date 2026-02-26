// ignore_for_file: unused_element, unnecessary_cast

/// A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.
class CertificateResponse {
  /// The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  final String issuer;

  /// The certificate is not valid after this time. Only present if parsed is true.
  final String notAfterTime;

  /// The certificate is not valid before this time. Only present if parsed is true.
  final String notBeforeTime;

  /// True if the certificate was parsed successfully.
  final bool parsed;

  /// The raw certificate bytes in DER format.
  final String rawDer;

  /// The certificate serial number as a hex string. Only present if parsed is true.
  final String serialNumber;

  /// The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  final String sha256Fingerprint;

  /// The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  final String subject;

  /// The subject Alternative DNS names. Only present if parsed is true.
  final List<String> subjectAlternativeDnsNames;

  CertificateResponse({
    required this.issuer,
    required this.notAfterTime,
    required this.notBeforeTime,
    required this.parsed,
    required this.rawDer,
    required this.serialNumber,
    required this.sha256Fingerprint,
    required this.subject,
    required this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuer'] = issuer;
    map['notAfterTime'] = notAfterTime;
    map['notBeforeTime'] = notBeforeTime;
    map['parsed'] = parsed;
    map['rawDer'] = rawDer;
    map['serialNumber'] = serialNumber;
    map['sha256Fingerprint'] = sha256Fingerprint;
    map['subject'] = subject;
    map['subjectAlternativeDnsNames'] = subjectAlternativeDnsNames;
    return map;
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      issuer: map['issuer'] as String,
      notAfterTime: map['notAfterTime'] as String,
      notBeforeTime: map['notBeforeTime'] as String,
      parsed: map['parsed'] as bool,
      rawDer: map['rawDer'] as String,
      serialNumber: map['serialNumber'] as String,
      sha256Fingerprint: map['sha256Fingerprint'] as String,
      subject: map['subject'] as String,
      subjectAlternativeDnsNames:
          (map['subjectAlternativeDnsNames'] as List).cast<String>(),
    );
  }
}
