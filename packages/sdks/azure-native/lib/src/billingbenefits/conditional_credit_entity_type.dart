/// Type of conditional credit entity
enum ConditionalCreditEntityType {
  valuePrimary("Primary"),
  valueContributor("Contributor");

  const ConditionalCreditEntityType(this.wireValue);
  final String wireValue;

  static ConditionalCreditEntityType fromValue(String value) {
    for (final item in ConditionalCreditEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionalCreditEntityType value: $value');
  }
}

