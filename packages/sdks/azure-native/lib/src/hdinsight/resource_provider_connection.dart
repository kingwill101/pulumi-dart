/// The direction for the resource provider connection.
enum ResourceProviderConnection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const ResourceProviderConnection(this.value);
  final String value;

  static ResourceProviderConnection fromValue(String value) {
    for (final item in ResourceProviderConnection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderConnection value: $value');
  }
}

