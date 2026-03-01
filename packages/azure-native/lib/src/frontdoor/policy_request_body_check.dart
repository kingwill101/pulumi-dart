/// Describes if policy managed rules will inspect the request body content.
enum PolicyRequestBodyCheck {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PolicyRequestBodyCheck(this.value);
  final String value;

  static PolicyRequestBodyCheck fromValue(String value) {
    for (final item in PolicyRequestBodyCheck.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRequestBodyCheck value: $value');
  }
}

