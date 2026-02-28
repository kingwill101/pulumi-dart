enum Tenancy {
  default_("default"),
  dedicated("dedicated");

  const Tenancy(this.value);
  final String value;

  static Tenancy fromValue(String value) {
    for (final item in Tenancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tenancy value: $value');
  }
}
