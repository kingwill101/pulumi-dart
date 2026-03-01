enum EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType {
  sanitizeTypeUnspecified("SANITIZE_TYPE_UNSPECIFIED"),
  scrub("SCRUB"),
  anonymize("ANONYMIZE"),
  anonymizeLimitedRepeatable("ANONYMIZE_LIMITED_REPEATABLE"),
  obfuscate("OBFUSCATE"),
  encrypt("ENCRYPT"),
  doNotSanitize("DO_NOT_SANITIZE");

  const EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType value: $value',
    );
  }
}
