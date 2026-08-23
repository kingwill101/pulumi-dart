/// The type of the usage plan.
enum UsagePlanType {
  basic("Basic"),
  standard("Standard");

  const UsagePlanType(this.wireValue);
  final String wireValue;

  static UsagePlanType fromValue(String value) {
    for (final item in UsagePlanType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsagePlanType value: $value');
  }
}
