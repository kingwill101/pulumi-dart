import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the load balancer.
enum LoadBalancerType implements pulumi.PulumiEnum<String> {
  valueBreadthFirst("BreadthFirst"),
  valueDepthFirst("DepthFirst"),
  valuePersistent("Persistent");

  const LoadBalancerType(this.wireValue);
  @override
  final String wireValue;

  static LoadBalancerType fromValue(String value) {
    for (final item in LoadBalancerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerType value: $value');
  }
}
