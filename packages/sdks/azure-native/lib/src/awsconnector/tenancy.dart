/// Property value
enum Tenancy {
  dedicated("dedicated"),
  default_("default"),
  host("host");

  const Tenancy(this.wireValue);
  final String wireValue;

  static Tenancy fromValue(String value) {
    for (final item in Tenancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tenancy value: $value');
  }
}
