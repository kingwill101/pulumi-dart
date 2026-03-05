/// The type of time series connection resource.
enum ConnectionType {
  valueAzureDataExplorer("AzureDataExplorer");

  const ConnectionType(this.wireValue);
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}

