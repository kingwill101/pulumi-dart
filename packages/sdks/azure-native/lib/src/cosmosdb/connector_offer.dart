/// The cassandra connector offer type for the Cosmos DB database C* account.
enum ConnectorOffer {
  valueSmall("Small");

  const ConnectorOffer(this.value);
  final String value;

  static ConnectorOffer fromValue(String value) {
    for (final item in ConnectorOffer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorOffer value: $value');
  }
}

