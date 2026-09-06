import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
enum FirewallSKU implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  standard("Standard"),
  premium("Premium");

  const FirewallSKU(this.wireValue);
  @override
  final String wireValue;

  static FirewallSKU fromValue(String value) {
    for (final item in FirewallSKU.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallSKU value: $value');
  }
}
