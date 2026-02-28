enum InterconnectRequestedFeaturesItem {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItem(this.value);
  final String value;

  static InterconnectRequestedFeaturesItem fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectRequestedFeaturesItem value: $value');
  }
}

