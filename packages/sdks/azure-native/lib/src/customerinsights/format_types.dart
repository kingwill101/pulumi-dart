import 'package:pulumi/pulumi.dart' as pulumi;

/// The type mapping format.
enum FormatTypes implements pulumi.PulumiEnum<String> {
  valueTextFormat("TextFormat");

  const FormatTypes(this.wireValue);
  @override
  final String wireValue;

  static FormatTypes fromValue(String value) {
    for (final item in FormatTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatTypes value: $value');
  }
}
