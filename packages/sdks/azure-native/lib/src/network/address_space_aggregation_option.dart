import 'package:pulumi/pulumi.dart' as pulumi;

/// Determine update behavior for changes to network groups referenced within the rules in this configuration.
enum AddressSpaceAggregationOption implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueManual("Manual");

  const AddressSpaceAggregationOption(this.wireValue);
  @override
  final String wireValue;

  static AddressSpaceAggregationOption fromValue(String value) {
    for (final item in AddressSpaceAggregationOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressSpaceAggregationOption value: $value');
  }
}
