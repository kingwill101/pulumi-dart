/// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
enum ServiceConfigSecurityLevel2 {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const ServiceConfigSecurityLevel2(this.value);
  final String value;

  static ServiceConfigSecurityLevel2 fromValue(String value) {
    for (final item in ServiceConfigSecurityLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigSecurityLevel2 value: $value');
  }
}
