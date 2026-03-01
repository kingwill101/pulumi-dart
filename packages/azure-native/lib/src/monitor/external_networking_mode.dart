/// External networking mode.
enum ExternalNetworkingMode {
  loadBalancerOnly("LoadBalancerOnly");

  const ExternalNetworkingMode(this.value);
  final String value;

  static ExternalNetworkingMode fromValue(String value) {
    for (final item in ExternalNetworkingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalNetworkingMode value: $value');
  }
}

