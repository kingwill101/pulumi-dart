/// Firewall Sku used for FQDN Rules
enum FirewallSku {
  valueStandard("Standard"),
  valueBasic("Basic");

  const FirewallSku(this.value);
  final String value;

  static FirewallSku fromValue(String value) {
    for (final item in FirewallSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallSku value: $value');
  }
}

