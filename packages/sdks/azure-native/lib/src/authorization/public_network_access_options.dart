enum PublicNetworkAccessOptions {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessOptions(this.wireValue);
  final String wireValue;

  static PublicNetworkAccessOptions fromValue(String value) {
    for (final item in PublicNetworkAccessOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessOptions value: $value');
  }
}

