// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshPublicKey.
class GetSshPublicKeyResult {
  /// An expiration time in microseconds since epoch.
  final String expirationTimeUsec;
  /// The SHA-256 fingerprint of the SSH public key.
  final String fingerprint;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final String key;
  /// The canonical resource name.
  final String name;

  /// Creates a new [GetSshPublicKeyResult].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [fingerprint] The SHA-256 fingerprint of the SSH public key.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [name] The canonical resource name.
  GetSshPublicKeyResult({
    required this.expirationTimeUsec,
    required this.fingerprint,
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': expirationTimeUsec,
      'fingerprint': fingerprint,
      'key': key,
      'name': name,
    };
  }

  factory GetSshPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyResult(
      expirationTimeUsec: map['expirationTimeUsec'] as String,
      fingerprint: map['fingerprint'] as String,
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}

