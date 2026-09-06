import 'package:pulumi/pulumi.dart' as pulumi;

/// The format of the report being delivered.
enum FormatType implements pulumi.PulumiEnum<String> {
  valueCsv("Csv");

  const FormatType(this.wireValue);
  @override
  final String wireValue;

  static FormatType fromValue(String value) {
    for (final item in FormatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatType value: $value');
  }
}
