/// Method used to make Relay available
enum AdvancedDatapathObservabilityConfigRelayMode2 {
  relayModeUnspecified("RELAY_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  internalVpcLb("INTERNAL_VPC_LB"),
  externalLb("EXTERNAL_LB");

  const AdvancedDatapathObservabilityConfigRelayMode2(this.value);
  final String value;

  static AdvancedDatapathObservabilityConfigRelayMode2 fromValue(String value) {
    for (final item in AdvancedDatapathObservabilityConfigRelayMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AdvancedDatapathObservabilityConfigRelayMode2 value: $value');
  }
}
