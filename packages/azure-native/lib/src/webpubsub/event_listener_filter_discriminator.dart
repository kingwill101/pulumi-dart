enum EventListenerFilterDiscriminator {
  valueEventName("EventName");

  const EventListenerFilterDiscriminator(this.value);
  final String value;

  static EventListenerFilterDiscriminator fromValue(String value) {
    for (final item in EventListenerFilterDiscriminator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventListenerFilterDiscriminator value: $value');
  }
}

