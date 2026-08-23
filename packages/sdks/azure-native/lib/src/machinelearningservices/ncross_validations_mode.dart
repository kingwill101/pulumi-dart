/// [Required] Mode for determining N-Cross validations.
enum NCrossValidationsMode {
  auto("Auto"),
  custom("Custom");

  const NCrossValidationsMode(this.wireValue);
  final String wireValue;

  static NCrossValidationsMode fromValue(String value) {
    for (final item in NCrossValidationsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NCrossValidationsMode value: $value');
  }
}
