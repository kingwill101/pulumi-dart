/// Specifies the execution mode. In Audit mode, the system acts as if it is enforcing the access control policy, including emitting access denial entries in the logs but it does not actually deny any requests to host endpoints. In Enforce mode, the system will enforce the access control and it is the recommended mode of operation.
enum Modes {
  audit("Audit"),
  enforce("Enforce"),
  disabled("Disabled");

  const Modes(this.value);
  final String value;

  static Modes fromValue(String value) {
    for (final item in Modes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Modes value: $value');
  }
}

