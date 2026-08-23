/// Filter VMs by Any or All specified tags.
enum TagOperators {
  all("All"),
  any("Any");

  const TagOperators(this.wireValue);
  final String wireValue;

  static TagOperators fromValue(String value) {
    for (final item in TagOperators.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagOperators value: $value');
  }
}
