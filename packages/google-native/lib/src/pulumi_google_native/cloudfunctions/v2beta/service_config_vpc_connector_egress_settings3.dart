/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettings3 {
  vpcConnectorEgressSettingsUnspecified(
      "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettings3(this.value);
  final String value;

  static ServiceConfigVpcConnectorEgressSettings3 fromValue(String value) {
    for (final item in ServiceConfigVpcConnectorEgressSettings3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceConfigVpcConnectorEgressSettings3 value: $value');
  }
}
