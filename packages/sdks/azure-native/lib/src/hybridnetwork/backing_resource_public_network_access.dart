/// The artifact store backing resource network access type
enum BackingResourcePublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BackingResourcePublicNetworkAccess(this.wireValue);
  final String wireValue;

  static BackingResourcePublicNetworkAccess fromValue(String value) {
    for (final item in BackingResourcePublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BackingResourcePublicNetworkAccess value: $value',
    );
  }
}
