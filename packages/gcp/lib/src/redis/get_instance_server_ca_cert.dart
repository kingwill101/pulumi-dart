// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceServerCaCert {
  /// The certificate data in PEM format.
  final String cert;

  /// The time when the certificate was created.
  final String createTime;

  /// The time when the certificate expires.
  final String expireTime;

  /// Serial number, as extracted from the certificate.
  final String serialNumber;

  /// Sha1 Fingerprint of the certificate.
  final String sha1Fingerprint;

  /// Creates a new [GetInstanceServerCaCert].
  /// [cert] The certificate data in PEM format.
  /// [createTime] The time when the certificate was created.
  /// [expireTime] The time when the certificate expires.
  /// [serialNumber] Serial number, as extracted from the certificate.
  /// [sha1Fingerprint] Sha1 Fingerprint of the certificate.
  GetInstanceServerCaCert({
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

  factory GetInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return GetInstanceServerCaCert(
      cert: map['cert'] as String,
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      serialNumber: map['serialNumber'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
