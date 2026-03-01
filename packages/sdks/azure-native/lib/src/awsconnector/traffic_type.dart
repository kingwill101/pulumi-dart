/// The type of traffic to log. You can log traffic that the resource accepts or rejects, or all traffic.
enum TrafficType {
  aCCEPT("ACCEPT"),
  aLL("ALL"),
  rEJECT("REJECT");

  const TrafficType(this.value);
  final String value;

  static TrafficType fromValue(String value) {
    for (final item in TrafficType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficType value: $value');
  }
}

