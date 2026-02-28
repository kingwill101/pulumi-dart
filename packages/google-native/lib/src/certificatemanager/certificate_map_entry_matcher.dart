/// A predefined matcher for particular cases, other than SNI selection.
enum CertificateMapEntryMatcher {
  matcherUnspecified("MATCHER_UNSPECIFIED"),
  primary("PRIMARY");

  const CertificateMapEntryMatcher(this.value);
  final String value;

  static CertificateMapEntryMatcher fromValue(String value) {
    for (final item in CertificateMapEntryMatcher.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateMapEntryMatcher value: $value');
  }
}

