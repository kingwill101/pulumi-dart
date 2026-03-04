/// AuthenticationType to be used for connection.
enum SybaseAuthenticationType {
  valueBasic("Basic"),
  valueWindows("Windows");

  const SybaseAuthenticationType(this.wireValue);
  final String wireValue;

  static SybaseAuthenticationType fromValue(String value) {
    for (final item in SybaseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SybaseAuthenticationType value: $value');
  }
}
