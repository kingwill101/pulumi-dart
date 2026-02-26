// ignore_for_file: unused_element, unnecessary_cast

class GetCaCertsCert {
  /// The CA certificate used to connect to the SQL instance via SSL.
  final String cert;

  /// The CN valid for the CA cert.
  final String commonName;

  /// Creation time of the CA cert.
  final String createTime;

  /// Expiration time of the CA cert.
  final String expirationTime;

  /// SHA1 fingerprint of the CA cert.
  final String sha1Fingerprint;

  GetCaCertsCert({
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

  factory GetCaCertsCert.fromMap(Map<String, dynamic> map) {
    return GetCaCertsCert(
      cert: map['cert'] as String,
      commonName: map['commonName'] as String,
      createTime: map['createTime'] as String,
      expirationTime: map['expirationTime'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
