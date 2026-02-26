enum InterconnectRequestedFeaturesItem3 {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItem3(this.value);
  final String value;

  static InterconnectRequestedFeaturesItem3 fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InterconnectRequestedFeaturesItem3 value: $value');
  }
}
