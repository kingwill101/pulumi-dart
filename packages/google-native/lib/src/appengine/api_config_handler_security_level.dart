/// Security (HTTPS) enforcement for this URL.
enum ApiConfigHandlerSecurityLevel {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const ApiConfigHandlerSecurityLevel(this.value);
  final String value;

  static ApiConfigHandlerSecurityLevel fromValue(String value) {
    for (final item in ApiConfigHandlerSecurityLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerSecurityLevel value: $value');
  }
}
