import 'package:pulumi/pulumi.dart' as pulumi;

/// Load Balancer Type
enum LoadBalancerType implements pulumi.PulumiEnum<String> {
  publicIp("PublicIp"),
  internalLoadBalancer("InternalLoadBalancer");

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
