import 'package:pulumi/pulumi.dart' as pulumi;

/// The outbound (egress) routing method. This can only be set at cluster creation time and cannot be changed later. For more information see [egress outbound type](https://docs.microsoft.com/azure/aks/egress-outboundtype).
enum OutboundType implements pulumi.PulumiEnum<String> {
  valueLoadBalancer("loadBalancer"),
  valueUserDefinedRouting("userDefinedRouting"),
  valueManagedNATGateway("managedNATGateway"),
  valueUserAssignedNATGateway("userAssignedNATGateway"),
  valueNone("none");

  const OutboundType(this.wireValue);
  @override
  final String wireValue;

  static OutboundType fromValue(String value) {
    for (final item in OutboundType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundType value: $value');
  }
}
