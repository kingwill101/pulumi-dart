/// The type of time series connection resource.
enum ConnectionType {
  valueAzureDataExplorer("AzureDataExplorer");

  const ConnectionType(this.value);
  final String value;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}

