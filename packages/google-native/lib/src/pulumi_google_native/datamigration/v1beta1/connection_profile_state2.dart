/// The current connection profile state (e.g. DRAFT, READY, or FAILED).
enum ConnectionProfileState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  creating("CREATING"),
  ready("READY"),
  updating("UPDATING"),
  deleting("DELETING"),
  deleted("DELETED"),
  failed("FAILED");

  const ConnectionProfileState2(this.value);
  final String value;

  static ConnectionProfileState2 fromValue(String value) {
    for (final item in ConnectionProfileState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileState2 value: $value');
  }
}
