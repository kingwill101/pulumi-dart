/// Gets or sets consolidation type.
enum ConsolidationType {
  full("Full"),
  asOnSource("AsOnSource");

  const ConsolidationType(this.value);
  final String value;

  static ConsolidationType fromValue(String value) {
    for (final item in ConsolidationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsolidationType value: $value');
  }
}

