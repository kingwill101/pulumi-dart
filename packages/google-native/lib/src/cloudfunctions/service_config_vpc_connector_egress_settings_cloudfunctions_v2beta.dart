/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2beta {
  vpcConnectorEgressSettingsUnspecified("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2beta(this.value);
  final String value;

  static ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2beta fromValue(String value) {
    for (final item in ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2beta value: $value');
  }
}

