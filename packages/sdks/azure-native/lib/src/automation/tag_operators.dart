/// Filter VMs by Any or All specified tags.
enum TagOperators {
  valueAll("All"),
  valueAny("Any");

  const TagOperators(this.value);
  final String value;

  static TagOperators fromValue(String value) {
    for (final item in TagOperators.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagOperators value: $value');
  }
}

