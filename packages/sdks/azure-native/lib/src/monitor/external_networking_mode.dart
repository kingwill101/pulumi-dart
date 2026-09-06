import 'package:pulumi/pulumi.dart' as pulumi;

/// External networking mode.
enum ExternalNetworkingMode implements pulumi.PulumiEnum<String> {
  loadBalancerOnly("LoadBalancerOnly");

  const ExternalNetworkingMode(this.wireValue);
  @override
  final String wireValue;

  static ExternalNetworkingMode fromValue(String value) {
    for (final item in ExternalNetworkingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalNetworkingMode value: $value');
  }
}
