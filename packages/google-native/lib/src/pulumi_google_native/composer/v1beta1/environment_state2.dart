/// The current state of the environment.
enum EnvironmentState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  running("RUNNING"),
  updating("UPDATING"),
  deleting("DELETING"),
  error("ERROR");

  const EnvironmentState2(this.value);
  final String value;

  static EnvironmentState2 fromValue(String value) {
    for (final item in EnvironmentState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentState2 value: $value');
  }
}
