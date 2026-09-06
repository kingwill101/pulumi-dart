import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to allow trusted Azure services to access a network restricted registry.
enum NetworkRuleBypassOptions implements pulumi.PulumiEnum<String> {
  valueAzureServices("AzureServices"),
  valueNone("None");

  const NetworkRuleBypassOptions(this.wireValue);
  @override
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
