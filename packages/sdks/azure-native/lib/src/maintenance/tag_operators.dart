import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter VMs by Any or All specified tags.
enum TagOperators implements pulumi.PulumiEnum<String> {
  valueAll("All"),
  valueAny("Any");

  const TagOperators(this.wireValue);
  @override
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
