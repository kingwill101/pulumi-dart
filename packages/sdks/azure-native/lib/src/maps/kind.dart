import 'package:pulumi/pulumi.dart' as pulumi;

/// Get or Set Kind property.
enum Kind implements pulumi.PulumiEnum<String> {
  valueGen2("Gen2");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
