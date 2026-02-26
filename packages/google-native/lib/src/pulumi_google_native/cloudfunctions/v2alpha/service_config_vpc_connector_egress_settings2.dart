/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettings2 {
  vpcConnectorEgressSettingsUnspecified(
      "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettings2(this.value);
  final String value;

  static ServiceConfigVpcConnectorEgressSettings2 fromValue(String value) {
    for (final item in ServiceConfigVpcConnectorEgressSettings2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceConfigVpcConnectorEgressSettings2 value: $value');
  }
}
