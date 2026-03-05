/// Connector Class
enum ConnectorClass {
  aZUREBLOBSOURCE("AZUREBLOBSOURCE"),
  aZUREBLOBSINK("AZUREBLOBSINK");

  const ConnectorClass(this.wireValue);
  final String wireValue;

  static ConnectorClass fromValue(String value) {
    for (final item in ConnectorClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorClass value: $value');
  }
}

