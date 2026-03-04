/// Enum to indicate type of Continuous backup mode
enum ContinuousTier {
  valueContinuous7Days("Continuous7Days"),
  valueContinuous30Days("Continuous30Days");

  const ContinuousTier(this.wireValue);
  final String wireValue;

  static ContinuousTier fromValue(String value) {
    for (final item in ContinuousTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContinuousTier value: $value');
  }
}
