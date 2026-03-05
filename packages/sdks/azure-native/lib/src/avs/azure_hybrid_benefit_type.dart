/// placement policy azure hybrid benefit opt-in type
enum AzureHybridBenefitType {
  sqlHost("SqlHost"),
  none("None");

  const AzureHybridBenefitType(this.wireValue);
  final String wireValue;

  static AzureHybridBenefitType fromValue(String value) {
    for (final item in AzureHybridBenefitType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureHybridBenefitType value: $value');
  }
}

