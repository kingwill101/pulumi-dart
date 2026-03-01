/// [Required] Mode for determining N-Cross validations.
enum NCrossValidationsMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const NCrossValidationsMode(this.value);
  final String value;

  static NCrossValidationsMode fromValue(String value) {
    for (final item in NCrossValidationsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NCrossValidationsMode value: $value');
  }
}

