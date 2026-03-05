/// The connection mode used to access CosmosDB account. Type: string.
enum CosmosDbConnectionMode {
  valueGateway("Gateway"),
  valueDirect("Direct");

  const CosmosDbConnectionMode(this.wireValue);
  final String wireValue;

  static CosmosDbConnectionMode fromValue(String value) {
    for (final item in CosmosDbConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CosmosDbConnectionMode value: $value');
  }
}

