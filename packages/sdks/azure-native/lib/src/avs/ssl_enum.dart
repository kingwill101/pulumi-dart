/// Protect LDAP communication using SSL certificate (LDAPS)
enum SslEnum {
  enabled("Enabled"),
  disabled("Disabled");

  const SslEnum(this.value);
  final String value;

  static SslEnum fromValue(String value) {
    for (final item in SslEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslEnum value: $value');
  }
}

