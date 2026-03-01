enum InterconnectRequestedFeaturesItemComputeV1 {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItemComputeV1(this.value);
  final String value;

  static InterconnectRequestedFeaturesItemComputeV1 fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItemComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectRequestedFeaturesItemComputeV1 value: $value',
    );
  }
}
