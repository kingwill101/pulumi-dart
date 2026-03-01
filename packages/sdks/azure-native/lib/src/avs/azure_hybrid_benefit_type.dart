/// placement policy azure hybrid benefit opt-in type
enum AzureHybridBenefitType {
  sqlHost("SqlHost"),
  none("None");

  const AzureHybridBenefitType(this.value);
  final String value;

  static AzureHybridBenefitType fromValue(String value) {
    for (final item in AzureHybridBenefitType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureHybridBenefitType value: $value');
  }
}

