/// Describes if policy managed rules will inspect the request body content.
enum PolicyRequestBodyCheck {
  disabled("Disabled"),
  enabled("Enabled");

  const PolicyRequestBodyCheck(this.wireValue);
  final String wireValue;

  static PolicyRequestBodyCheck fromValue(String value) {
    for (final item in PolicyRequestBodyCheck.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRequestBodyCheck value: $value');
  }
}
