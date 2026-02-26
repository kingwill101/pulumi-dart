/// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
enum ServiceConfigSecurityLevel3 {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const ServiceConfigSecurityLevel3(this.value);
  final String value;

  static ServiceConfigSecurityLevel3 fromValue(String value) {
    for (final item in ServiceConfigSecurityLevel3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigSecurityLevel3 value: $value');
  }
}
