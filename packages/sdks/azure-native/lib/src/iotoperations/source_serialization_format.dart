import 'package:pulumi/pulumi.dart' as pulumi;

/// Content is a JSON Schema. Allowed: JSON Schema/draft-7.
enum SourceSerializationFormat implements pulumi.PulumiEnum<String> {
  json("Json");

  const SourceSerializationFormat(this.wireValue);
  @override
  final String wireValue;

  static SourceSerializationFormat fromValue(String value) {
    for (final item in SourceSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceSerializationFormat value: $value');
  }
}
