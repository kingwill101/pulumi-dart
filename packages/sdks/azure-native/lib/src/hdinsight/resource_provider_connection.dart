/// The direction for the resource provider connection.
enum ResourceProviderConnection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const ResourceProviderConnection(this.wireValue);
  final String wireValue;

  static ResourceProviderConnection fromValue(String value) {
    for (final item in ResourceProviderConnection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderConnection value: $value');
  }
}
