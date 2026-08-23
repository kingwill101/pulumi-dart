/// Defines the customer's intent for configuring SDN integration
enum SdnIntegrationIntent {
  enable("Enable"),
  disable("Disable");

  const SdnIntegrationIntent(this.wireValue);
  final String wireValue;

  static SdnIntegrationIntent fromValue(String value) {
    for (final item in SdnIntegrationIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SdnIntegrationIntent value: $value');
  }
}
