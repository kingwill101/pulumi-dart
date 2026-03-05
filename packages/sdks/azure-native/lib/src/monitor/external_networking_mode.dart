/// External networking mode.
enum ExternalNetworkingMode {
  loadBalancerOnly("LoadBalancerOnly");

  const ExternalNetworkingMode(this.wireValue);
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

