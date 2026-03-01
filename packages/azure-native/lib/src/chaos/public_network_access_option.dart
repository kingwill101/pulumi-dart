/// Public Network Access Control for PrivateAccess resource.
enum PublicNetworkAccessOption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessOption(this.value);
  final String value;

  static PublicNetworkAccessOption fromValue(String value) {
    for (final item in PublicNetworkAccessOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessOption value: $value');
  }
}

