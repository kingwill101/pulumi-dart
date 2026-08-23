/// Designation of hub resource allocation (Pooled or Reserved)
enum Designation {
  pooled("Pooled"),
  reserved("Reserved");

  const Designation(this.wireValue);
  final String wireValue;

  static Designation fromValue(String value) {
    for (final item in Designation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Designation value: $value');
  }
}
