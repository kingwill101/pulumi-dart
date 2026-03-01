enum PublicNetworkAccessOptions {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessOptions(this.value);
  final String value;

  static PublicNetworkAccessOptions fromValue(String value) {
    for (final item in PublicNetworkAccessOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessOptions value: $value');
  }
}

