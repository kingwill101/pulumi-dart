import 'package:pulumi/pulumi.dart' as pulumi;

/// Designation of hub resource allocation (Pooled or Reserved)
enum Designation implements pulumi.PulumiEnum<String> {
  pooled("Pooled"),
  reserved("Reserved");

  const Designation(this.wireValue);
  @override
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
