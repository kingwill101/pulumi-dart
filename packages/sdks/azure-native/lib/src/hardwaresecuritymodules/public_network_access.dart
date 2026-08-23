/// The Cloud HSM Cluster public network access
enum PublicNetworkAccess {
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.wireValue);
  final String wireValue;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}
