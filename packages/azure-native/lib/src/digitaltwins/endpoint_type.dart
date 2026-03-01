/// The type of Digital Twins endpoint
enum EndpointType {
  valueEventHub("EventHub"),
  valueEventGrid("EventGrid"),
  valueServiceBus("ServiceBus");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

