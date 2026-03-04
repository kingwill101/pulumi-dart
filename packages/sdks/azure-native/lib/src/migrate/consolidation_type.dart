/// Gets or sets consolidation type.
enum ConsolidationType {
  full("Full"),
  asOnSource("AsOnSource");

  const ConsolidationType(this.wireValue);
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
