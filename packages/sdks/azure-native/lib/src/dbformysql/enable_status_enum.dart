/// Enable Log On Disk or not.
enum EnableStatusEnum {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableStatusEnum(this.wireValue);
  final String wireValue;

  static EnableStatusEnum fromValue(String value) {
    for (final item in EnableStatusEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatusEnum value: $value');
  }
}

