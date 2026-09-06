import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of endpoint.
enum Type implements pulumi.PulumiEnum<String> {
  default_("default"),
  custom("custom");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
