/// Public Network Access Control for PrivateAccess resource.
enum PublicNetworkAccessOption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessOption(this.wireValue);
  final String wireValue;

  static PublicNetworkAccessOption fromValue(String value) {
    for (final item in PublicNetworkAccessOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessOption value: $value');
  }
}
