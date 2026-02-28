/// The current connection profile state (e.g. DRAFT, READY, or FAILED).
enum ConnectionProfileStateDatamigrationV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  creating("CREATING"),
  ready("READY"),
  updating("UPDATING"),
  deleting("DELETING"),
  deleted("DELETED"),
  failed("FAILED");

  const ConnectionProfileStateDatamigrationV1beta1(this.value);
  final String value;

  static ConnectionProfileStateDatamigrationV1beta1 fromValue(String value) {
    for (final item in ConnectionProfileStateDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConnectionProfileStateDatamigrationV1beta1 value: $value');
  }
}
