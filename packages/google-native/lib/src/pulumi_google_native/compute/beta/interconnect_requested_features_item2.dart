enum InterconnectRequestedFeaturesItem2 {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItem2(this.value);
  final String value;

  static InterconnectRequestedFeaturesItem2 fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InterconnectRequestedFeaturesItem2 value: $value');
  }
}
