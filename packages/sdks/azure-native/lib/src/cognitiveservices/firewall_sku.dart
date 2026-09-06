import 'package:pulumi/pulumi.dart' as pulumi;

/// Firewall Sku used for FQDN Rules
enum FirewallSku implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  basic("Basic");

  const FirewallSku(this.wireValue);
  @override
  final String wireValue;

  static FirewallSku fromValue(String value) {
    for (final item in FirewallSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallSku value: $value');
  }
}
