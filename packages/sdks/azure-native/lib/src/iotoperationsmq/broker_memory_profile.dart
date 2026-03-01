/// Memory profile of broker.
enum BrokerMemoryProfile {
  tiny("tiny"),
  low("low"),
  medium("medium"),
  high("high");

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

