/// Destination port behavior.
enum DestinationPortBehavior {
  valueNone("None"),
  valueListenIfAvailable("ListenIfAvailable");

  const DestinationPortBehavior(this.wireValue);
  final String wireValue;

  static DestinationPortBehavior fromValue(String value) {
    for (final item in DestinationPortBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationPortBehavior value: $value');
  }
}

