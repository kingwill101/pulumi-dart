/// AuthenticationType to be used for connection.
enum TeradataAuthenticationType {
  valueBasic("Basic"),
  valueWindows("Windows");

  const TeradataAuthenticationType(this.value);
  final String value;

  static TeradataAuthenticationType fromValue(String value) {
    for (final item in TeradataAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeradataAuthenticationType value: $value');
  }
}

