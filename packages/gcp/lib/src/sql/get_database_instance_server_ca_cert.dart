// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceServerCaCert {
  /// The CA Certificate used to connect to the SQL Instance via SSL.
  final String cert;

  /// The CN valid for the CA Cert.
  final String commonName;

  /// Creation time of the CA Cert.
  final String createTime;

  /// Expiration time of the CA Cert.
  final String expirationTime;

  /// SHA Fingerprint of the CA Cert.
  final String sha1Fingerprint;

  /// Creates a new [GetDatabaseInstanceServerCaCert].
  /// [cert] The CA Certificate used to connect to the SQL Instance via SSL.
  /// [commonName] The CN valid for the CA Cert.
  /// [createTime] Creation time of the CA Cert.
  /// [expirationTime] Expiration time of the CA Cert.
  /// [sha1Fingerprint] SHA Fingerprint of the CA Cert.
  GetDatabaseInstanceServerCaCert({
    required this.cert,
    required this.commonName,
    required this.createTime,
    required this.expirationTime,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cert'] = cert;
    map['commonName'] = commonName;
    map['createTime'] = createTime;
    map['expirationTime'] = expirationTime;
    map['sha1Fingerprint'] = sha1Fingerprint;
    return map;
  }

  factory GetDatabaseInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceServerCaCert(
      cert: map['cert'] as String,
      commonName: map['commonName'] as String,
      createTime: map['createTime'] as String,
      expirationTime: map['expirationTime'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
