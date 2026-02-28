/// The state of the index. Output only.
enum IndexState {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  ready("READY"),
  error("ERROR");

  const IndexState(this.value);
  final String value;

  static IndexState fromValue(String value) {
    for (final item in IndexState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexState value: $value');
  }
}

