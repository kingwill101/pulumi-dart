/// The current connection profile state (e.g. DRAFT, READY, or FAILED).
enum ConnectionProfileState {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  creating("CREATING"),
  ready("READY"),
  updating("UPDATING"),
  deleting("DELETING"),
  deleted("DELETED"),
  failed("FAILED");

  const ConnectionProfileState(this.value);
  final String value;

  static ConnectionProfileState fromValue(String value) {
    for (final item in ConnectionProfileState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileState value: $value');
  }
}

