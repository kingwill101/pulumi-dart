/// Cookie based affinity.
enum ApplicationGatewayCookieBasedAffinity {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationGatewayCookieBasedAffinity(this.value);
  final String value;

  static ApplicationGatewayCookieBasedAffinity fromValue(String value) {
    for (final item in ApplicationGatewayCookieBasedAffinity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayCookieBasedAffinity value: $value');
  }
}

