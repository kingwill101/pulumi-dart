import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the category of the SLI, used to classify signals such as Availability and Latency.
enum Category implements pulumi.PulumiEnum<String> {
  availability("Availability"),
  latency("Latency");

  const Category(this.wireValue);
  @override
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
