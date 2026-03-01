/// Enable Log On Disk or not.
enum EnableStatusEnum {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableStatusEnum(this.value);
  final String value;

  static EnableStatusEnum fromValue(String value) {
    for (final item in EnableStatusEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatusEnum value: $value');
  }
}

