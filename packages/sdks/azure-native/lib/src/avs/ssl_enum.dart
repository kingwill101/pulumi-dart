/// Protect LDAP communication using SSL certificate (LDAPS)
enum SslEnum {
  enabled("Enabled"),
  disabled("Disabled");

  const SslEnum(this.wireValue);
  final String wireValue;

  static SslEnum fromValue(String value) {
    for (final item in SslEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslEnum value: $value');
  }
}

