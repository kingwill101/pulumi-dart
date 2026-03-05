/// AuthenticationType to be used for connection.
enum TeradataAuthenticationType {
  valueBasic("Basic"),
  valueWindows("Windows");

  const TeradataAuthenticationType(this.wireValue);
  final String wireValue;

  static TeradataAuthenticationType fromValue(String value) {
    for (final item in TeradataAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeradataAuthenticationType value: $value');
  }
}

