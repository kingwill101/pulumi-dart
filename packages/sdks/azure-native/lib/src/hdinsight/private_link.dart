/// Indicates whether or not private link is enabled.
enum PrivateLink {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PrivateLink(this.wireValue);
  final String wireValue;

  static PrivateLink fromValue(String value) {
    for (final item in PrivateLink.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLink value: $value');
  }
}

