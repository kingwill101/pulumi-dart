/// The network access type for accessing Log Analytics query.
enum PublicNetworkAccessType {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessType(this.value);
  final String value;

  static PublicNetworkAccessType fromValue(String value) {
    for (final item in PublicNetworkAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessType value: $value');
  }
}

