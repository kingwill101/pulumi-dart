/// Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
enum PublicNetworkAccessType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessType(this.wireValue);
  final String wireValue;

  static PublicNetworkAccessType fromValue(String value) {
    for (final item in PublicNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessType value: $value');
  }
}
