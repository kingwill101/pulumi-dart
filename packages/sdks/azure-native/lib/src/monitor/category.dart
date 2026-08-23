/// Specifies the category of the SLI, used to classify signals such as Availability and Latency.
enum Category {
  availability("Availability"),
  latency("Latency");

  const Category(this.wireValue);
  final String wireValue;

  static Category fromValue(String value) {
    for (final item in Category.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Category value: $value');
  }
}
