/// Default handling for logs that don't match any of the specified filtering conditions.
enum DefaultBehavior {
  dROP("DROP"),
  kEEP("KEEP");

  const DefaultBehavior(this.value);
  final String value;

  static DefaultBehavior fromValue(String value) {
    for (final item in DefaultBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultBehavior value: $value');
  }
}

