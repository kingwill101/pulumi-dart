/// Required. Indicates the current state of this Consent.
enum ConsentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentState(this.value);
  final String value;

  static ConsentState fromValue(String value) {
    for (final item in ConsentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentState value: $value');
  }
}
