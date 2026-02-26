/// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
enum SslConfigSslMode2 {
  sslModeUnspecified("SSL_MODE_UNSPECIFIED"),
  sslModeAllow("SSL_MODE_ALLOW"),
  sslModeRequire("SSL_MODE_REQUIRE"),
  sslModeVerifyCa("SSL_MODE_VERIFY_CA"),
  allowUnencryptedAndEncrypted("ALLOW_UNENCRYPTED_AND_ENCRYPTED"),
  encryptedOnly("ENCRYPTED_ONLY");

  const SslConfigSslMode2(this.value);
  final String value;

  static SslConfigSslMode2 fromValue(String value) {
    for (final item in SslConfigSslMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigSslMode2 value: $value');
  }
}
