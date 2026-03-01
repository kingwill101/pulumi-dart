/// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
enum PublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.value);
  final String value;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}

