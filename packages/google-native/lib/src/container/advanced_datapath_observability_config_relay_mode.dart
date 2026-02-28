/// Method used to make Relay available
enum AdvancedDatapathObservabilityConfigRelayMode {
  relayModeUnspecified("RELAY_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  internalVpcLb("INTERNAL_VPC_LB"),
  externalLb("EXTERNAL_LB");

  const AdvancedDatapathObservabilityConfigRelayMode(this.value);
  final String value;

  static AdvancedDatapathObservabilityConfigRelayMode fromValue(String value) {
    for (final item in AdvancedDatapathObservabilityConfigRelayMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedDatapathObservabilityConfigRelayMode value: $value');
  }
}

