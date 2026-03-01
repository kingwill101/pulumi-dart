enum EnterpriseCrmLoggingGwsFieldLimitsShortenerType {
  shortenerTypeUnspecified("SHORTENER_TYPE_UNSPECIFIED"),
  shorten("SHORTEN"),
  hash("HASH"),
  shortenWithHash("SHORTEN_WITH_HASH"),
  shortenEmail("SHORTEN_EMAIL"),
  shortenEmailWithHash("SHORTEN_EMAIL_WITH_HASH"),
  shortenDomain("SHORTEN_DOMAIN");

  const EnterpriseCrmLoggingGwsFieldLimitsShortenerType(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsFieldLimitsShortenerType fromValue(
    String value,
  ) {
    for (final item in EnterpriseCrmLoggingGwsFieldLimitsShortenerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmLoggingGwsFieldLimitsShortenerType value: $value',
    );
  }
}
