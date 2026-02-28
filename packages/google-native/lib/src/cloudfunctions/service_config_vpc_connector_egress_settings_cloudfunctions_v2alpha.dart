/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha {
  vpcConnectorEgressSettingsUnspecified("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha(this.value);
  final String value;

  static ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha fromValue(String value) {
    for (final item in ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha value: $value');
  }
}

