/// type of the destination
enum EventSubscriptionDestinationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  endpoint("ENDPOINT");

  const EventSubscriptionDestinationType(this.value);
  final String value;

  static EventSubscriptionDestinationType fromValue(String value) {
    for (final item in EventSubscriptionDestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EventSubscriptionDestinationType value: $value');
  }
}
