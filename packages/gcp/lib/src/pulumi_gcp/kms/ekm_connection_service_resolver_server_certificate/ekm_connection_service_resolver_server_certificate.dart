// ignore_for_file: unused_element, unnecessary_cast

class EkmConnectionServiceResolverServerCertificate {
  /// (Output)
  /// Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  final String? issuer;

  /// (Output)
  /// Output only. The certificate is not valid after this time. Only present if parsed is true.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? notAfterTime;

  /// (Output)
  /// Output only. The certificate is not valid before this time. Only present if parsed is true.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? notBeforeTime;

  /// (Output)
  /// Output only. True if the certificate was parsed successfully.
  final bool? parsed;

  /// Required. The raw certificate bytes in DER format. A base64-encoded string.
  final String rawDer;

  /// (Output)
  /// Output only. The certificate serial number as a hex string. Only present if parsed is true.
  final String? serialNumber;

  /// (Output)
  /// Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  final String? sha256Fingerprint;

  /// (Output)
  /// Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  final String? subject;

  /// (Output)
  /// Output only. The subject Alternative DNS names. Only present if parsed is true.
  final List<String>? subjectAlternativeDnsNames;

  EkmConnectionServiceResolverServerCertificate({
    this.issuer,
    this.notAfterTime,
    this.notBeforeTime,
    this.parsed,
    required this.rawDer,
    this.serialNumber,
    this.sha256Fingerprint,
    this.subject,
    this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final notAfterTimeValue = notAfterTime;
    if (notAfterTimeValue != null) {
      map['notAfterTime'] = notAfterTimeValue;
    }
    final notBeforeTimeValue = notBeforeTime;
    if (notBeforeTimeValue != null) {
      map['notBeforeTime'] = notBeforeTimeValue;
    }
    final parsedValue = parsed;
    if (parsedValue != null) {
      map['parsed'] = parsedValue;
    }
    map['rawDer'] = rawDer;
    final serialNumberValue = serialNumber;
    if (serialNumberValue != null) {
      map['serialNumber'] = serialNumberValue;
    }
    final sha256FingerprintValue = sha256Fingerprint;
    if (sha256FingerprintValue != null) {
      map['sha256Fingerprint'] = sha256FingerprintValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    final subjectAlternativeDnsNamesValue = subjectAlternativeDnsNames;
    if (subjectAlternativeDnsNamesValue != null) {
      map['subjectAlternativeDnsNames'] = subjectAlternativeDnsNamesValue;
    }
    return map;
  }

  factory EkmConnectionServiceResolverServerCertificate.fromMap(
      Map<String, dynamic> map) {
    return EkmConnectionServiceResolverServerCertificate(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      notAfterTime:
          map['notAfterTime'] == null ? null : map['notAfterTime'] as String,
      notBeforeTime:
          map['notBeforeTime'] == null ? null : map['notBeforeTime'] as String,
      parsed: map['parsed'] == null ? null : map['parsed'] as bool,
      rawDer: map['rawDer'] as String,
      serialNumber:
          map['serialNumber'] == null ? null : map['serialNumber'] as String,
      sha256Fingerprint: map['sha256Fingerprint'] == null
          ? null
          : map['sha256Fingerprint'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      subjectAlternativeDnsNames: map['subjectAlternativeDnsNames'] == null
          ? null
          : (map['subjectAlternativeDnsNames'] as List).cast<String>(),
    );
  }
}
