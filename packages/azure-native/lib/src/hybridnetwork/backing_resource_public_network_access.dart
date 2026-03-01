/// The artifact store backing resource network access type
enum BackingResourcePublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BackingResourcePublicNetworkAccess(this.value);
  final String value;

  static BackingResourcePublicNetworkAccess fromValue(String value) {
    for (final item in BackingResourcePublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackingResourcePublicNetworkAccess value: $value');
  }
}

