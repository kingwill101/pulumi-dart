/// Connector Class
enum ConnectorClass {
  aZUREBLOBSOURCE("AZUREBLOBSOURCE"),
  aZUREBLOBSINK("AZUREBLOBSINK");

  const ConnectorClass(this.value);
  final String value;

  static ConnectorClass fromValue(String value) {
    for (final item in ConnectorClass.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorClass value: $value');
  }
}

