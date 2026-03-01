/// state of this rule
enum StateEnum {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const StateEnum(this.value);
  final String value;

  static StateEnum fromValue(String value) {
    for (final item in StateEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StateEnum value: $value');
  }
}

