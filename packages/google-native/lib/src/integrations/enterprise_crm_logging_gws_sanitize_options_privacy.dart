enum EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy {
  privacyTypeUnspecified("PRIVACY_TYPE_UNSPECIFIED"),
  notPii("NOT_PII"),
  pii("PII"),
  spii("SPII"),
  unsure("UNSURE");

  const EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy value: $value',
    );
  }
}
