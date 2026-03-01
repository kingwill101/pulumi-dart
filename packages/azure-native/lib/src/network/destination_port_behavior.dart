/// Destination port behavior.
enum DestinationPortBehavior {
  valueNone("None"),
  valueListenIfAvailable("ListenIfAvailable");

  const DestinationPortBehavior(this.value);
  final String value;

  static DestinationPortBehavior fromValue(String value) {
    for (final item in DestinationPortBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationPortBehavior value: $value');
  }
}

