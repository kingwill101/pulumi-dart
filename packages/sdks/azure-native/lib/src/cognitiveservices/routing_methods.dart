/// Multiregion routing methods.
enum RoutingMethods {
  valuePriority("Priority"),
  valueWeighted("Weighted"),
  valuePerformance("Performance");

  const RoutingMethods(this.wireValue);
  final String wireValue;

  static RoutingMethods fromValue(String value) {
    for (final item in RoutingMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingMethods value: $value');
  }
}

