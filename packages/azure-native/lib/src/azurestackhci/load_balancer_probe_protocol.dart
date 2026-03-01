/// Protocol for this probe: Can be Tcp or Http - Diverges from Azure where Https is also an option
enum LoadBalancerProbeProtocol {
  tCP("Tcp"),
  hTTP("Http");

  const LoadBalancerProbeProtocol(this.value);
  final String value;

  static LoadBalancerProbeProtocol fromValue(String value) {
    for (final item in LoadBalancerProbeProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerProbeProtocol value: $value');
  }
}

