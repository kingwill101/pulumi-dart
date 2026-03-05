/// Cookie based affinity.
enum ApplicationGatewayCookieBasedAffinity {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationGatewayCookieBasedAffinity(this.wireValue);
  final String wireValue;

  static ApplicationGatewayCookieBasedAffinity fromValue(String value) {
    for (final item in ApplicationGatewayCookieBasedAffinity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayCookieBasedAffinity value: $value');
  }
}

