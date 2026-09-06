import 'package:pulumi/pulumi.dart' as pulumi;

/// Format of the schema.
enum Format implements pulumi.PulumiEnum<String> {
  jsonSchemaDraft7("JsonSchema/draft-07"),
  delta10("Delta/1.0");

  const Format(this.wireValue);
  @override
  final String wireValue;

  static Format fromValue(String value) {
    for (final item in Format.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Format value: $value');
  }
}
