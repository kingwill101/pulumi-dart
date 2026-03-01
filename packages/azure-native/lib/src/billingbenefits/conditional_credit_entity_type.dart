/// Type of conditional credit entity
enum ConditionalCreditEntityType {
  valuePrimary("Primary"),
  valueContributor("Contributor");

  const ConditionalCreditEntityType(this.value);
  final String value;

  static ConditionalCreditEntityType fromValue(String value) {
    for (final item in ConditionalCreditEntityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionalCreditEntityType value: $value');
  }
}

