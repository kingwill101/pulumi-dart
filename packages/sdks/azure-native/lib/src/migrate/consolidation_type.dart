import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets consolidation type.
enum ConsolidationType implements pulumi.PulumiEnum<String> {
  full("Full"),
  asOnSource("AsOnSource");

  const ConsolidationType(this.wireValue);
  @override
  final String wireValue;

  static ConsolidationType fromValue(String value) {
    for (final item in ConsolidationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsolidationType value: $value');
  }
}
