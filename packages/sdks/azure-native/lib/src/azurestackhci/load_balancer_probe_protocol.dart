/// Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
enum LoadBalancerProbeProtocol {
  tCP("Tcp"),
  hTTP("Http");

  const LoadBalancerProbeProtocol(this.wireValue);
  final String wireValue;

  static LoadBalancerProbeProtocol fromValue(String value) {
    for (final item in LoadBalancerProbeProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerProbeProtocol value: $value');
  }
}
