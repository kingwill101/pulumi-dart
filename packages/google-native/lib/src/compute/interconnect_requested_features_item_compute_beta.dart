enum InterconnectRequestedFeaturesItemComputeBeta {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItemComputeBeta(this.value);
  final String value;

  static InterconnectRequestedFeaturesItemComputeBeta fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItemComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InterconnectRequestedFeaturesItemComputeBeta value: $value');
  }
}
