/// Mode of an ingress gateway.
enum IstioIngressGatewayMode {
  valueExternal("External"),
  valueInternal("Internal");

  const IstioIngressGatewayMode(this.wireValue);
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
