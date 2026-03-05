/// Memory profile of Broker.
enum BrokerMemoryProfile {
  tiny("Tiny"),
  low("Low"),
  medium("Medium"),
  high("High");

  const BrokerMemoryProfile(this.wireValue);
  final String wireValue;

  static BrokerMemoryProfile fromValue(String value) {
    for (final item in BrokerMemoryProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerMemoryProfile value: $value');
  }
}

