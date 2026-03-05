/// Gets or sets the power on boot.
enum PowerOnBootOption {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PowerOnBootOption(this.wireValue);
  final String wireValue;

  static PowerOnBootOption fromValue(String value) {
    for (final item in PowerOnBootOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PowerOnBootOption value: $value');
  }
}

