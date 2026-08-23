/// different usage type like PAYG/COMMITTED
enum UsageType {
  valuePAYG("PAYG"),
  valueCOMMITTED("COMMITTED");

  const UsageType(this.wireValue);
  final String wireValue;

  static UsageType fromValue(String value) {
    for (final item in UsageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsageType value: $value');
  }
}
