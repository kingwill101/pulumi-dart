// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSshPublicKey.
class GetSshPublicKeyOsloginV1betaResult {
  /// An expiration time in microseconds since epoch.
  final String expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  final String fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final String key;

  /// The canonical resource name.
  final String name;

  GetSshPublicKeyOsloginV1betaResult({
    required this.expirationTimeUsec,
    required this.fingerprint,
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationTimeUsec'] = expirationTimeUsec;
    map['fingerprint'] = fingerprint;
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory GetSshPublicKeyOsloginV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyOsloginV1betaResult(
      expirationTimeUsec: map['expirationTimeUsec'] as String,
      fingerprint: map['fingerprint'] as String,
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
