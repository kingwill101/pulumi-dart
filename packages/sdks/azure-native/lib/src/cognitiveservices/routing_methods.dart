import 'package:pulumi/pulumi.dart' as pulumi;

/// Multiregion routing methods.
enum RoutingMethods implements pulumi.PulumiEnum<String> {
  valuePriority("Priority"),
  valueWeighted("Weighted"),
  valuePerformance("Performance");

  const RoutingMethods(this.wireValue);
  @override
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
