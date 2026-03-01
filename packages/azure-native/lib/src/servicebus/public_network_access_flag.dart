/// This determines if traffic is allowed over public network. By default it is enabled.
enum PublicNetworkAccessFlag {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessFlag(this.value);
  final String value;

  static PublicNetworkAccessFlag fromValue(String value) {
    for (final item in PublicNetworkAccessFlag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessFlag value: $value');
  }
}

