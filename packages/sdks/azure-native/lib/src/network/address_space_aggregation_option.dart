/// Determine update behavior for changes to network groups referenced within the rules in this configuration.
enum AddressSpaceAggregationOption {
  valueNone("None"),
  valueManual("Manual");

  const AddressSpaceAggregationOption(this.wireValue);
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

