/// The egress setting for the connector, controlling what traffic is diverted through it.
enum VpcAccessConnectorEgressSetting2 {
  egressSettingUnspecified("EGRESS_SETTING_UNSPECIFIED"),
  allTraffic("ALL_TRAFFIC"),
  privateIpRanges("PRIVATE_IP_RANGES");

  const VpcAccessConnectorEgressSetting2(this.value);
  final String value;

  static VpcAccessConnectorEgressSetting2 fromValue(String value) {
    for (final item in VpcAccessConnectorEgressSetting2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VpcAccessConnectorEgressSetting2 value: $value');
  }
}
