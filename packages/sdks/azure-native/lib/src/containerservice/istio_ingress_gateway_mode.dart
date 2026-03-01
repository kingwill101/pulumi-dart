/// Mode of an ingress gateway.
enum IstioIngressGatewayMode {
  valueExternal("External"),
  valueInternal("Internal");

  const IstioIngressGatewayMode(this.value);
  final String value;

  static IstioIngressGatewayMode fromValue(String value) {
    for (final item in IstioIngressGatewayMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IstioIngressGatewayMode value: $value');
  }
}

