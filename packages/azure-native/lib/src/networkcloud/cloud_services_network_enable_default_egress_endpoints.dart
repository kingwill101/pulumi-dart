/// The indicator of whether the platform default endpoints are allowed for the egress traffic.
enum CloudServicesNetworkEnableDefaultEgressEndpoints {
  valueTrue("True"),
  valueFalse("False");

  const CloudServicesNetworkEnableDefaultEgressEndpoints(this.value);
  final String value;

  static CloudServicesNetworkEnableDefaultEgressEndpoints fromValue(String value) {
    for (final item in CloudServicesNetworkEnableDefaultEgressEndpoints.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServicesNetworkEnableDefaultEgressEndpoints value: $value');
  }
}

