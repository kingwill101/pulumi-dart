import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of parameter.
enum Type implements pulumi.PulumiEnum<String> {
  string_("String"),
  stringList("StringList");

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
