/// Whether to allow trusted Azure services to access a network restricted registry.
enum NetworkRuleBypassOptions {
  valueAzureServices("AzureServices"),
  valueNone("None");

  const NetworkRuleBypassOptions(this.value);
  final String value;

  static NetworkRuleBypassOptions fromValue(String value) {
    for (final item in NetworkRuleBypassOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleBypassOptions value: $value');
  }
}

