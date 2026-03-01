/// different usage type like PAYG/COMMITTED
enum UsageType {
  valuePAYG("PAYG"),
  valueCOMMITTED("COMMITTED");

  const UsageType(this.value);
  final String value;

  static UsageType fromValue(String value) {
    for (final item in UsageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsageType value: $value');
  }
}

