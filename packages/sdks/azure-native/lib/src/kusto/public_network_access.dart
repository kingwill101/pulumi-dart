/// Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
enum PublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.value);
  final String value;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}

