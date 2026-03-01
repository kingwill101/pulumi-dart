/// Multiregion routing methods.
enum RoutingMethods {
  valuePriority("Priority"),
  valueWeighted("Weighted"),
  valuePerformance("Performance");

  const RoutingMethods(this.value);
  final String value;

  static RoutingMethods fromValue(String value) {
    for (final item in RoutingMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingMethods value: $value');
  }
}

