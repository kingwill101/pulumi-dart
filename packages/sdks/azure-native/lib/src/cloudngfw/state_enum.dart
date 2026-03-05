/// state of this rule
enum StateEnum {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const StateEnum(this.wireValue);
  final String wireValue;

  static StateEnum fromValue(String value) {
    for (final item in StateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StateEnum value: $value');
  }
}

