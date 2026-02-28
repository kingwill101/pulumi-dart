// ignore_for_file: unused_element, unnecessary_cast

/// SslCerts Resource
class SslCertResponseSqladminV1beta4 {
  /// PEM representation.
  final String cert;

  /// Serial number, as extracted from the certificate.
  final String certSerialNumber;

  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  final String commonName;

  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String createTime;

  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String expirationTime;

  /// Name of the database instance.
  final String instance;

  /// This is always `sql#sslCert`.
  final String kind;

  /// The URI of this resource.
  final String selfLink;

  /// Sha1 Fingerprint.
  final String sha1Fingerprint;

  /// Creates a new [SslCertResponseSqladminV1beta4].
  /// [cert] PEM representation.
  /// [certSerialNumber] Serial number, as extracted from the certificate.
  /// [commonName] User supplied name. Constrained to [a-zA-Z.-_ ]+.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [expirationTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#sslCert`.
  /// [selfLink] The URI of this resource.
  /// [sha1Fingerprint] Sha1 Fingerprint.
  SslCertResponseSqladminV1beta4({
    required this.cert,
    required this.certSerialNumber,
    required this.commonName,
    required this.createTime,
    required this.expirationTime,
    required this.instance,
    required this.kind,
    required this.selfLink,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cert'] = cert;
    map['certSerialNumber'] = certSerialNumber;
    map['commonName'] = commonName;
    map['createTime'] = createTime;
    map['expirationTime'] = expirationTime;
    map['instance'] = instance;
    map['kind'] = kind;
    map['selfLink'] = selfLink;
    map['sha1Fingerprint'] = sha1Fingerprint;
    return map;
  }

  factory SslCertResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SslCertResponseSqladminV1beta4(
      cert: map['cert'] as String,
      certSerialNumber: map['certSerialNumber'] as String,
      commonName: map['commonName'] as String,
      createTime: map['createTime'] as String,
      expirationTime: map['expirationTime'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      selfLink: map['selfLink'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
