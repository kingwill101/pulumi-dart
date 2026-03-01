/// Type of the role eligibility schedule expiration
enum Type {
  valueAfterDuration("AfterDuration"),
  valueAfterDateTime("AfterDateTime"),
  valueNoExpiration("NoExpiration");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

