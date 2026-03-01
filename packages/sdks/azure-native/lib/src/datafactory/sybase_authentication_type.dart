/// AuthenticationType to be used for connection.
enum SybaseAuthenticationType {
  valueBasic("Basic"),
  valueWindows("Windows");

  const SybaseAuthenticationType(this.value);
  final String value;

  static SybaseAuthenticationType fromValue(String value) {
    for (final item in SybaseAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SybaseAuthenticationType value: $value');
  }
}

