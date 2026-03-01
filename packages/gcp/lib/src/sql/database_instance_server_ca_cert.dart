// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceServerCaCert {
  /// The CA Certificate used to connect to the SQL Instance via SSL.
  final String? cert;

  /// The CN valid for the CA Cert.
  final String? commonName;

  /// Creation time of the CA Cert.
  final String? createTime;

  /// Expiration time of the CA Cert.
  final String? expirationTime;

  /// SHA Fingerprint of the CA Cert.
  final String? sha1Fingerprint;

  /// Creates a new [DatabaseInstanceServerCaCert].
  /// [cert] The CA Certificate used to connect to the SQL Instance via SSL.
  /// [commonName] The CN valid for the CA Cert.
  /// [createTime] Creation time of the CA Cert.
  /// [expirationTime] Expiration time of the CA Cert.
  /// [sha1Fingerprint] SHA Fingerprint of the CA Cert.
  DatabaseInstanceServerCaCert({
    this.cert,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'commonName': ?commonName,
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory DatabaseInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceServerCaCert(
      cert: map['cert'] == null ? null : map['cert'] as String,
      commonName: map['commonName'] == null
          ? null
          : map['commonName'] as String,
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] == null
          ? null
          : map['sha1Fingerprint'] as String,
    );
  }
}
