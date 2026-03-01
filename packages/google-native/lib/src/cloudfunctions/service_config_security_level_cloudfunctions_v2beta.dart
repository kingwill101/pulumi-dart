/// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
enum ServiceConfigSecurityLevelCloudfunctionsV2beta {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const ServiceConfigSecurityLevelCloudfunctionsV2beta(this.value);
  final String value;

  static ServiceConfigSecurityLevelCloudfunctionsV2beta fromValue(
    String value,
  ) {
    for (final item in ServiceConfigSecurityLevelCloudfunctionsV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceConfigSecurityLevelCloudfunctionsV2beta value: $value',
    );
  }
}
