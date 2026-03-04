/// Firewall Sku used for FQDN Rules
enum FirewallSku {
  valueStandard("Standard"),
  valueBasic("Basic");

  const FirewallSku(this.wireValue);
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
