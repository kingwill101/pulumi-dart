/// Memory profile of Broker.
enum BrokerMemoryProfile {
  tiny("Tiny"),
  low("Low"),
  medium("Medium"),
  high("High");

  const BrokerMemoryProfile(this.value);
  final String value;

  static BrokerMemoryProfile fromValue(String value) {
    for (final item in BrokerMemoryProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerMemoryProfile value: $value');
  }
}

