/// Required. Indicates the current state of this Consent.
enum ConsentState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentState2(this.value);
  final String value;

  static ConsentState2 fromValue(String value) {
    for (final item in ConsentState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentState2 value: $value');
  }
}
