// ignore_for_file: unused_element, unnecessary_cast


/// TlsCertificate Resource
class TlsCertificateResponse {
  /// PEM representation.
  final String cert;
  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  final String createTime;
  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  final String expireTime;
  /// Serial number, as extracted from the certificate.
  final String serialNumber;
  /// Sha1 Fingerprint of the certificate.
  final String sha1Fingerprint;

  /// Creates a new [TlsCertificateResponse].
  /// [cert] PEM representation.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  /// [expireTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  /// [serialNumber] Serial number, as extracted from the certificate.
  /// [sha1Fingerprint] Sha1 Fingerprint of the certificate.
  TlsCertificateResponse({
    required this.cert,
    required this.createTime,
    required this.expireTime,
    required this.serialNumber,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'createTime': createTime,
      'expireTime': expireTime,
      'serialNumber': serialNumber,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory TlsCertificateResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificateResponse(
      cert: map['cert'] as String,
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      serialNumber: map['serialNumber'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}

