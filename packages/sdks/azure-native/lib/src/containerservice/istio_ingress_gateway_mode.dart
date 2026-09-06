import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of an ingress gateway.
enum IstioIngressGatewayMode implements pulumi.PulumiEnum<String> {
  valueExternal("External"),
  valueInternal("Internal");

  const IstioIngressGatewayMode(this.wireValue);
  @override
  final String wireValue;

  static IstioIngressGatewayMode fromValue(String value) {
    for (final item in IstioIngressGatewayMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IstioIngressGatewayMode value: $value');
  }
}
