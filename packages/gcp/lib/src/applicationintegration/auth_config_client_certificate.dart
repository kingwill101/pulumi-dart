// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigClientCertificate {
  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  final String encryptedPrivateKey;

  /// 'passphrase' should be left unset if private key is not encrypted.
  /// Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  final String? passphrase;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  final String sslCertificate;

  /// Creates a new [AuthConfigClientCertificate].
  /// [encryptedPrivateKey] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  /// [passphrase] 'passphrase' should be left unset if private key is not encrypted.
  /// [sslCertificate] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  AuthConfigClientCertificate({
    required this.encryptedPrivateKey,
    this.passphrase,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptedPrivateKey'] = encryptedPrivateKey;
    final passphraseValue = passphrase;
    if (passphraseValue != null) {
      map['passphrase'] = passphraseValue;
    }
    map['sslCertificate'] = sslCertificate;
    return map;
  }

  factory AuthConfigClientCertificate.fromMap(Map<String, dynamic> map) {
    return AuthConfigClientCertificate(
      encryptedPrivateKey: map['encryptedPrivateKey'] as String,
      passphrase:
          map['passphrase'] == null ? null : map['passphrase'] as String,
      sslCertificate: map['sslCertificate'] as String,
    );
  }
}
