/// Security (HTTPS) enforcement for this URL.
enum UrlMapSecurityLevel2 {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const UrlMapSecurityLevel2(this.value);
  final String value;

  static UrlMapSecurityLevel2 fromValue(String value) {
    for (final item in UrlMapSecurityLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapSecurityLevel2 value: $value');
  }
}
