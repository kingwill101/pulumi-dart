/// Determine update behavior for changes to network groups referenced within the rules in this configuration.
enum AddressSpaceAggregationOption {
  valueNone("None"),
  valueManual("Manual");

  const AddressSpaceAggregationOption(this.value);
  final String value;

  static AddressSpaceAggregationOption fromValue(String value) {
    for (final item in AddressSpaceAggregationOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressSpaceAggregationOption value: $value');
  }
}

