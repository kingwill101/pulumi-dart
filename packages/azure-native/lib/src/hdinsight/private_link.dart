/// Indicates whether or not private link is enabled.
enum PrivateLink {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PrivateLink(this.value);
  final String value;

  static PrivateLink fromValue(String value) {
    for (final item in PrivateLink.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLink value: $value');
  }
}

