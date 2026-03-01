/// Gets or sets the power on boot.
enum PowerOnBootOption {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PowerOnBootOption(this.value);
  final String value;

  static PowerOnBootOption fromValue(String value) {
    for (final item in PowerOnBootOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PowerOnBootOption value: $value');
  }
}

