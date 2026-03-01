/// The strategy to use for dropping messages from the queue.
enum SubscriberMessageDropStrategy {
  none("None"),
  dropOldest("DropOldest");

  const SubscriberMessageDropStrategy(this.value);
  final String value;

  static SubscriberMessageDropStrategy fromValue(String value) {
    for (final item in SubscriberMessageDropStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriberMessageDropStrategy value: $value');
  }
}

