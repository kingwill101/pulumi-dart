// ignore_for_file: unused_element, unnecessary_cast

/// SslCerts Resource
class SslCert {
  /// PEM representation.
  final String? cert;

  /// Serial number, as extracted from the certificate.
  final String? certSerialNumber;

  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  final String? commonName;

  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
  final String? createTime;

  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? expirationTime;

  /// Name of the database instance.
  final String? instance;

  /// This is always `sql#sslCert`.
  final String? kind;

  /// The URI of this resource.
  final String? selfLink;

  /// Sha1 Fingerprint.
  final String? sha1Fingerprint;

  /// Creates a new [SslCert].
  /// [cert] PEM representation.
  /// [certSerialNumber] Serial number, as extracted from the certificate.
  /// [commonName] User supplied name. Constrained to [a-zA-Z.-_ ]+.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
  /// [expirationTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#sslCert`.
  /// [selfLink] The URI of this resource.
  /// [sha1Fingerprint] Sha1 Fingerprint.
  SslCert({
    this.cert,
    this.certSerialNumber,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.instance,
    this.kind,
    this.selfLink,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'certSerialNumber': ?certSerialNumber,
      'commonName': ?commonName,
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'instance': ?instance,
      'kind': ?kind,
      'selfLink': ?selfLink,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory SslCert.fromMap(Map<String, dynamic> map) {
    return SslCert(
      cert: map['cert'] == null ? null : map['cert'] as String,
      certSerialNumber: map['certSerialNumber'] == null
          ? null
          : map['certSerialNumber'] as String,
      commonName: map['commonName'] == null
          ? null
          : map['commonName'] as String,
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] == null
          ? null
          : map['sha1Fingerprint'] as String,
    );
  }
}
