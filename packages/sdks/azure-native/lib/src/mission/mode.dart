/// Current mode of Maintenance Mode Configuration
enum Mode {
  valueOn("On"),
  valueCanNotDelete("CanNotDelete"),
  valueOff("Off"),
  valueGeneral("General"),
  valueAdvanced("Advanced");

  const Mode(this.value);
  final String value;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}

