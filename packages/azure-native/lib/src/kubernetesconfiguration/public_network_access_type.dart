/// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
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

