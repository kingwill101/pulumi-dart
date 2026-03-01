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

  /// Creates a new [EkmConnectionServiceResolverServerCertificate].
  /// [issuer] (Output)
  /// [notAfterTime] (Output)
  /// [notBeforeTime] (Output)
  /// [parsed] (Output)
  /// [rawDer] Required. The raw certificate bytes in DER format. A base64-encoded string.
  /// [serialNumber] (Output)
  /// [sha256Fingerprint] (Output)
  /// [subject] (Output)
  /// [subjectAlternativeDnsNames] (Output)
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
    return <String, dynamic>{
      'issuer': ?issuer,
      'notAfterTime': ?notAfterTime,
      'notBeforeTime': ?notBeforeTime,
      'parsed': ?parsed,
      'rawDer': rawDer,
      'serialNumber': ?serialNumber,
      'sha256Fingerprint': ?sha256Fingerprint,
      'subject': ?subject,
      'subjectAlternativeDnsNames': ?subjectAlternativeDnsNames,
    };
  }

  factory EkmConnectionServiceResolverServerCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return EkmConnectionServiceResolverServerCertificate(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      notAfterTime: map['notAfterTime'] == null
          ? null
          : map['notAfterTime'] as String,
      notBeforeTime: map['notBeforeTime'] == null
          ? null
          : map['notBeforeTime'] as String,
      parsed: map['parsed'] == null ? null : map['parsed'] as bool,
      rawDer: map['rawDer'] as String,
      serialNumber: map['serialNumber'] == null
          ? null
          : map['serialNumber'] as String,
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
