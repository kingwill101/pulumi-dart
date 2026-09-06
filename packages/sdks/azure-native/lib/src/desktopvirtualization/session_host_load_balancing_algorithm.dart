import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing algorithm for ramp up period.
enum SessionHostLoadBalancingAlgorithm implements pulumi.PulumiEnum<String> {
  valueBreadthFirst("BreadthFirst"),
  valueDepthFirst("DepthFirst");

  const SessionHostLoadBalancingAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static SessionHostLoadBalancingAlgorithm fromValue(String value) {
    for (final item in SessionHostLoadBalancingAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHostLoadBalancingAlgorithm value: $value');
  }
}
