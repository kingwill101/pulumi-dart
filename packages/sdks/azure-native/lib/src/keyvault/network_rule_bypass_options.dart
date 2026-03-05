/// Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'.
enum NetworkRuleBypassOptions {
  valueAzureServices("AzureServices"),
  valueNone("None");

  const NetworkRuleBypassOptions(this.wireValue);
  final String wireValue;

  static NetworkRuleBypassOptions fromValue(String value) {
    for (final item in NetworkRuleBypassOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleBypassOptions value: $value');
  }
}

