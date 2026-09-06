import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
enum Casing implements pulumi.PulumiEnum<String> {
  insensitive("Insensitive"),
  sensitive("Sensitive");

  const Casing(this.wireValue);
  @override
  final String wireValue;

  static Casing fromValue(String value) {
    for (final item in Casing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Casing value: $value');
  }
}
