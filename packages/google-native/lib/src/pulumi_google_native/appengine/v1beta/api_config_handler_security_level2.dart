/// Security (HTTPS) enforcement for this URL.
enum ApiConfigHandlerSecurityLevel2 {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const ApiConfigHandlerSecurityLevel2(this.value);
  final String value;

  static ApiConfigHandlerSecurityLevel2 fromValue(String value) {
    for (final item in ApiConfigHandlerSecurityLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerSecurityLevel2 value: $value');
  }
}
