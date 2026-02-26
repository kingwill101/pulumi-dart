// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceServerCaCert {
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

  GetDatabaseInstancesInstanceServerCaCert({
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

  factory GetDatabaseInstancesInstanceServerCaCert.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceServerCaCert(
      cert: map['cert'] as String,
      commonName: map['commonName'] as String,
      createTime: map['createTime'] as String,
      expirationTime: map['expirationTime'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
