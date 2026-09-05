import 'package:pulumi/pulumi.dart' as pulumi;

enum LoadBalancerType implements pulumi.PulumiEnum<String> {
  application("application"),
  network("network");

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
