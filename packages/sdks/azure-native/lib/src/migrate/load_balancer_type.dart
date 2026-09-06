import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the load balancer type.
enum LoadBalancerType implements pulumi.PulumiEnum<String> {
  valuePrivate("Private"),
  valuePublic("Public");

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
